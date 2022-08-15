.class public final synthetic Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService$3;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService$3;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutService$3;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/ShortcutService$3;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;->f$1:Landroid/os/UserHandle;

    invoke-static {v0, p0}, Lcom/android/server/pm/ShortcutService$3;->$r8$lambda$mKjCUiEaa2G77eV1ya9ub8d7VEM(Lcom/android/server/pm/ShortcutService$3;Landroid/os/UserHandle;)V

    return-void
.end method
