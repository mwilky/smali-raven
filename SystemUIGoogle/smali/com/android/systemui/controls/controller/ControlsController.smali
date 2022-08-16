.class public interface abstract Lcom/android/systemui/controls/controller/ControlsController;
.super Ljava/lang/Object;
.source "ControlsController.kt"

# interfaces
.implements Lcom/android/systemui/util/UserAwareController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlsController$LoadData;
    }
.end annotation


# virtual methods
.method public abstract action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V
.end method

.method public abstract addFavorite(Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ControlInfo;)V
.end method

.method public abstract addSeedingFavoritesCallback(Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;)Z
.end method

.method public abstract countFavoritesForComponent(Landroid/content/ComponentName;)I
.end method

.method public abstract getFavorites()Ljava/util/ArrayList;
.end method

.method public abstract getFavoritesForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferredStructure()Lcom/android/systemui/controls/controller/StructureInfo;
.end method

.method public abstract onActionResponse(Landroid/content/ComponentName;Ljava/lang/String;I)V
.end method

.method public abstract refreshStatus(Landroid/content/ComponentName;Landroid/service/controls/Control;)V
.end method

.method public abstract seedFavoritesForComponents(Ljava/util/List;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/SeedResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract subscribeToFavorites(Lcom/android/systemui/controls/controller/StructureInfo;)V
.end method

.method public abstract unsubscribe()V
.end method
