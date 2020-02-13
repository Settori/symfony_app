<?php

namespace App\Controller;

use App\Entity\User;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\RedirectResponse;

class MainCotrollerController extends AbstractController
{
    /**
     * @Route("/", name="main_cotroller")
     */
    public function index()
    {
        $this->denyAccessUnlessGranted('IS_AUTHENTICATED_FULLY');
        $user = $this->getUser();
        $users = $this->getDoctrine()->getRepository(User::class)->findBy(array(), array(), 10, null);
        return $this->render('main.html.twig', array(
            'users' => $users
        ));
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
