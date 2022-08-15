.class public final synthetic Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskPositioner;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskPositioner;->$r8$lambda$K323arD56shsNs8CnuvKMBCM7UM(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method
