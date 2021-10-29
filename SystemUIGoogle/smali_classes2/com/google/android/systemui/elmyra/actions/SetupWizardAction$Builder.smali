.class public Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
.super Ljava/lang/Object;
.source "SetupWizardAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field private mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;
    .locals 7

    new-instance v6, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iget-object v4, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/actions/SettingsAction;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$1;)V

    return-object v6
.end method

.method public setLaunchOpa(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    return-object p0
.end method

.method public setSettingsAction(Lcom/google/android/systemui/elmyra/actions/SettingsAction;)Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SetupWizardAction$Builder;->mSettingsAction:Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    return-object p0
.end method
