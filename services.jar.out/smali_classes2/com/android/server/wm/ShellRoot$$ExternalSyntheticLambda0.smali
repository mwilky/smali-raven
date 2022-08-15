.class public final synthetic Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ShellRoot;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ShellRoot;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ShellRoot;

    iput p2, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ShellRoot;

    iget p0, p0, Lcom/android/server/wm/ShellRoot$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/wm/ShellRoot;->$r8$lambda$HpaMwo-WhYCkPTtlmfDT5_eAVLQ(Lcom/android/server/wm/ShellRoot;I)V

    return-void
.end method
