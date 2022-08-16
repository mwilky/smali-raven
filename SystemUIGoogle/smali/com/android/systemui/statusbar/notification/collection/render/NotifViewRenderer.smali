.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/NotifViewRenderer;
.super Ljava/lang/Object;
.source "NotifViewRenderer.kt"


# virtual methods
.method public abstract getGroupController(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifGroupController;
.end method

.method public abstract getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifRowController;
.end method

.method public abstract getStackController()Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;
.end method

.method public abstract onDispatchComplete()V
.end method

.method public abstract onRenderList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;)V"
        }
    .end annotation
.end method
