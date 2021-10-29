.class Lcom/android/systemui/qs/QSFooterViewController$1;
.super Ljava/lang/Object;
.source "QSFooterViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSFooterViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFooterViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFooterViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$1;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController$1;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p1}, Lcom/android/systemui/qs/QSFooterViewController;->access$000(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isGuestUser(I)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController$1;->this$0:Lcom/android/systemui/qs/QSFooterViewController;

    invoke-static {p0}, Lcom/android/systemui/qs/QSFooterViewController;->access$100(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSFooterView;->onUserInfoChanged(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
