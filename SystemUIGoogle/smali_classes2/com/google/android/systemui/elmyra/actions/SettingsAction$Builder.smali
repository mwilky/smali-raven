.class public Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;
.super Ljava/lang/Object;
.source "SettingsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/SettingsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/systemui/elmyra/actions/SettingsAction;
    .locals 4

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SettingsAction;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/systemui/elmyra/actions/SettingsAction;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/google/android/systemui/elmyra/actions/LaunchOpa;Lcom/google/android/systemui/elmyra/actions/SettingsAction$1;)V

    return-object v0
.end method

.method public setLaunchOpa(Lcom/google/android/systemui/elmyra/actions/LaunchOpa;)Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SettingsAction$Builder;->mLaunchOpa:Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    return-object p0
.end method
