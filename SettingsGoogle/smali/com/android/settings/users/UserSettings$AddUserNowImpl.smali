.class Lcom/android/settings/users/UserSettings$AddUserNowImpl;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddUserNowImpl"
.end annotation


# instance fields
.field mImplAddUserName:Ljava/lang/String;

.field mUserType:I

.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method public static synthetic $r8$lambda$Hj506aLDWH74HgxtVA0nQ7QJthY(Lcom/android/settings/users/UserSettings$AddUserNowImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->lambda$runAddUser$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/users/UserSettings;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mUserType:I

    iput-object p3, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mImplAddUserName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$runAddUser$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0}, Lcom/android/settings/users/UserSettings;->-$$Nest$monUserCreationFailed(Lcom/android/settings/users/UserSettings;)V

    return-void
.end method

.method private runAddUser()V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserLock(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mImplAddUserName:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mUserType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserLock(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v2}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmAddingUser(Lcom/android/settings/users/UserSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserIcon(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserName(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/settings/users/UserSettings$AddUserNowImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$AddUserNowImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/users/UserSettings$AddUserNowImpl;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v5}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmPendingUserIcon(Lcom/android/settings/users/UserSettings;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_2
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmUserManager(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;

    move-result-object v2

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/internal/util/UserIcons;->convertToBitmapAtUserIconSize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    iget v2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->mUserType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object v2, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v2}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->-$$Nest$fgetmHandler(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x2

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v5, v6, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserIcon(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0, v4}, Lcom/android/settings/users/UserSettings;->-$$Nest$fputmPendingUserName(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings$AddUserNowImpl;->runAddUser()V

    const-string p0, "UserSettings.addUserNow"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    return-void
.end method
