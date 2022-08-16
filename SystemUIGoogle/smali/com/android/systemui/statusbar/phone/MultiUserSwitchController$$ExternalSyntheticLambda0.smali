.class public final synthetic Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f05005e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserSwitcherEnabled(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
