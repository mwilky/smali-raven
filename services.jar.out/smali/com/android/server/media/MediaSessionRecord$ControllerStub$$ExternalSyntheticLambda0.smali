.class public final synthetic Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field public final synthetic f$1:Landroid/media/session/ISessionControllerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord$ControllerStub;Landroid/media/session/ISessionControllerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/ISessionControllerCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub$$ExternalSyntheticLambda0;->f$1:Landroid/media/session/ISessionControllerCallback;

    invoke-static {v0, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->$r8$lambda$8rbiMArEpzc2x9P8H6VvdHOI2c0(Lcom/android/server/media/MediaSessionRecord$ControllerStub;Landroid/media/session/ISessionControllerCallback;)V

    return-void
.end method
