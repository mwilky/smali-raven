.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteAccessibilityConnection"
.end annotation


# instance fields
.field private final mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

.field private final mPackageName:Ljava/lang/String;

.field private final mUid:I

.field private final mUserId:I

.field private final mWindowId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mWindowId:I

    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    iput p6, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUserId:I

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->unlinkToDeath()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$500(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mWindowId:I

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->access$1500(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getRemote()Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    return-object v0
.end method

.method getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mUid:I

    return v0
.end method

.method linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method unlinkToDeath()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$RemoteAccessibilityConnection;->mConnection:Landroid/view/accessibility/IAccessibilityInteractionConnection;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
