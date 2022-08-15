.class public interface abstract Lcom/android/server/companion/AssociationStore;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/AssociationStore$OnChangeListener;
    }
.end annotation


# virtual methods
.method public abstract getAssociationById(I)Landroid/companion/AssociationInfo;
.end method

.method public abstract getAssociations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAssociationsForUser(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
.end method
