.class public Lcom/android/settings/users/AddSupervisedUserActivity;
.super Landroid/app/Activity;
.source "AddSupervisedUserActivity.java"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$TV7JLcV7Npfv0NbudsIJoaveYVw(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/os/NewUserRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/users/AddSupervisedUserActivity;->lambda$createUserAsync$2(Landroid/os/NewUserRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2UWma0OwKpKd1Du7ohivNTt_q4(Ljava/util/function/Consumer;Landroid/os/NewUserResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/users/AddSupervisedUserActivity;->lambda$createUserAsync$1(Ljava/util/function/Consumer;Landroid/os/NewUserResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lW2Fu6aaCmR_HNV8gaMXYA2S2Ls(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AddSupervisedUserActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2zFJZTkfWKjKt1uBYUkqP_tbmE(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/app/AlertDialog;Landroid/os/NewUserResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AddSupervisedUserActivity;->lambda$createUser$3(Landroid/app/AlertDialog;Landroid/os/NewUserResponse;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createUser()V
    .locals 3

    new-instance v0, Landroid/os/NewUserRequest$Builder;

    invoke-direct {v0}, Landroid/os/NewUserRequest$Builder;-><init>()V

    const v1, 0x7f041615

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/NewUserRequest$Builder;->setName(Ljava/lang/String;)Landroid/os/NewUserRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/NewUserRequest$Builder;->build()Landroid/os/NewUserRequest;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f04070d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    new-instance v2, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/app/AlertDialog;)V

    invoke-direct {p0, v0, v2}, Lcom/android/settings/users/AddSupervisedUserActivity;->createUserAsync(Landroid/os/NewUserRequest;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private createUserAsync(Landroid/os/NewUserRequest;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NewUserRequest;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/NewUserResponse;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/users/AddSupervisedUserActivity;Landroid/os/NewUserRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createUser$3(Landroid/app/AlertDialog;Landroid/os/NewUserResponse;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    invoke-virtual {p2}, Landroid/os/NewUserResponse;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/users/AddSupervisedUserActivity;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p2}, Landroid/os/NewUserResponse;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->switchUser(Landroid/os/UserHandle;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0401fd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/os/UserManager$UserOperationResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/NewUserResponse;->getOperationResult()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f040f60

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private static synthetic lambda$createUserAsync$1(Ljava/util/function/Consumer;Landroid/os/NewUserResponse;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$createUserAsync$2(Landroid/os/NewUserRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/AddSupervisedUserActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->createUser(Landroid/os/NewUserRequest;)Landroid/os/NewUserResponse;

    move-result-object p0

    new-instance p1, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3, p0}, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Landroid/os/NewUserResponse;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AddSupervisedUserActivity;->createUser()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/AddSupervisedUserActivity;->mUserManager:Landroid/os/UserManager;

    const-class p1, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/users/AddSupervisedUserActivity;->mActivityManager:Landroid/app/ActivityManager;

    const p1, 0x7f060042

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0d01a2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AddSupervisedUserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/AddSupervisedUserActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
