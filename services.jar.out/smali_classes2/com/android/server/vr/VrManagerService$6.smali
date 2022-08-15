.class public Lcom/android/server/vr/VrManagerService$6;
.super Ljava/lang/Object;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$PendingEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;

.field public final synthetic val$b:Z

.field public final synthetic val$c:Landroid/content/ComponentName;

.field public final synthetic val$pid:I


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$6;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iput p4, p0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runEvent(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/service/vr/IVrListener;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$6;->val$c:Landroid/content/ComponentName;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService$6;->val$b:Z

    iget p0, p0, Lcom/android/server/vr/VrManagerService$6;->val$pid:I

    invoke-interface {p1, v0, v1, p0}, Landroid/service/vr/IVrListener;->focusedActivityChanged(Landroid/content/ComponentName;ZI)V

    return-void
.end method
