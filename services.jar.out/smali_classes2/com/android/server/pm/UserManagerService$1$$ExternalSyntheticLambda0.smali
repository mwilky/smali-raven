.class public final synthetic Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/IntentSender;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/UserManagerService$1;->$r8$lambda$CP436xQlmBbqLZnSXGioN5U-DBc(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V

    return-void
.end method
