module Autosets where

open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Data.Product using (_×_;∃; ∃-syntax; _,_)

-- Assuming elements of autosets are of some generic type A
record Autoset (A : Set) : Set1 where
  field
    _*_ : A → A → A
    assoc : ∀ {x y z} → x * (y * z) ≡ (x * y) * z
    solvability : ∀ {x z} → (∃ λ y → x * y ≡ z) × (∃ λ y' → y' * x ≡ z)
