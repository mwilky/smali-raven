.class public final Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;
.super Ljava/lang/Object;
.source "MultiUserSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiUserSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/qs/user/UserSwitchDialogController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mUserSwitchDialogController:Lcom/android/systemui/qs/user/UserSwitchDialogController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitchController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    return-void
.end method
