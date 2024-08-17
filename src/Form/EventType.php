<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Name'
            ])
            ->add('date', DateTimeType::class, [
                'widget' => 'single_text',
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Date and Time'
            ])
            ->add('description', TextareaType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Description'
            ])
            ->add('image', UrlType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Image URL'
            ])
            ->add('capacity', NumberType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Capacity'
            ])
            ->add('contactEmail', EmailType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Contact Email'
            ])
            ->add('contactPhone', TextType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Contact Phone'
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Address'
            ])
            ->add('url', UrlType::class, [
                'attr' => ['class' => 'form-control'],
                'label' => 'Event URL'
            ])
            ->add('type', ChoiceType::class, [
                'choices' => [
                    'Music' => 'music',
                    'Sport' => 'sport',
                    'Movie' => 'movie',
                    'Theater' => 'theater',
                ],
                'attr' => ['class' => 'form-control'],
                'label' => 'Event Type'
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
