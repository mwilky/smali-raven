.class final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$setRemoteInputController$1;
.super Ljava/lang/Object;
.source "RemoteInputCoordinator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/SmartReplyController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$setRemoteInputController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSmartReplySent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator$setRemoteInputController$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->access$onSmartReplySent(Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V

    return-void
.end method
