<?php

namespace App\Controller;

use App\Entity\User;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Knp\Component\Pager\PaginatorInterface; 

class MainCotrollerController extends Controller
{
    /**
     * @Route("/", name="main_cotroller")
     */
    public function index( Request $request)
    {
        $paginator = $this->get('knp_paginator');
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');
        //$users = $this->getDoctrine()->getRepository(User::class)->findBy(array(), array(), 10, null);
        $users = $this->getDoctrine()->getRepository(User::class);
        return $this->render('main.html.twig', [ 
            'pagination' => $paginator->paginate(
             $users->findAll(),$request->query->getInt('page', 1),10) 
        ]);
    }

    /**
     * @Route("/disable/{id}", name="disable")
     */
    public function disable($id)
    {
        $entityManager = $this->getDoctrine()->getManager();
        $user = $entityManager->getRepository(User::class)->find($id);
        if (!$user) {
            throw $this->createNotFoundException(
                'No product user for id '.$id
            );
        }
        $user->setDisabled(1);
        $entityManager->flush();
        return $this->redirectToRoute('main_cotroller');
    }

    /**
     * @Route("/activate/{id}", name="activate")
     */
    public function activate($id)
    {
        $entityManager = $this->getDoctrine()->getManager();
        $user = $entityManager->getRepository(User::class)->find($id);
        if (!$user) {
            throw $this->createNotFoundException(
                'No product user for id '.$id
            );
        }
        $user->setDisabled(0);
        $entityManager->flush();
        return $this->redirectToRoute('main_cotroller');
    }

    
}
