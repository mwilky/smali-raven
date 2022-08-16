.class public final Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;
.super Ljava/lang/Object;
.source "StatusBarUserInfoTracker.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;-><init>(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserInfoChanged(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->currentUserAvatar:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->currentUserName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;->onCurrentUserChipInfoUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method
