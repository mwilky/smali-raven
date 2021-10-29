.class public interface abstract Lcom/android/systemui/controls/management/ControlsModel;
.super Ljava/lang/Object;
.source "ControlsModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;,
        Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    }
.end annotation


# virtual methods
.method public abstract changeFavoriteStatus(Ljava/lang/String;Z)V
.end method

.method public abstract getElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFavorites()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMoveHelper()Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
.end method
