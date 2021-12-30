.class final Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AwareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/aware/AwareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mAirplaneMode:Landroid/net/Uri;

.field private final mAwareAllowed:Landroid/net/Uri;

.field private final mAwareEnabled:Landroid/net/Uri;

.field private final mBatterySaver:Landroid/net/Uri;

.field private mCallback:Lcom/google/android/settings/aware/AwareHelper$Callback;

.field final synthetic this$0:Lcom/google/android/settings/aware/AwareHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/settings/aware/AwareHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->this$0:Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "aware_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mAwareEnabled:Landroid/net/Uri;

    const-string p1, "aware_allowed"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mAwareAllowed:Landroid/net/Uri;

    const-string p1, "airplane_mode_on"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mAirplaneMode:Landroid/net/Uri;

    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mBatterySaver:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;Lcom/google/android/settings/aware/AwareHelper$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->setCallback(Lcom/google/android/settings/aware/AwareHelper$Callback;)V

    return-void
.end method

.method private setCallback(Lcom/google/android/settings/aware/AwareHelper$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mCallback:Lcom/google/android/settings/aware/AwareHelper$Callback;

    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->this$0:Lcom/google/android/settings/aware/AwareHelper;

    invoke-static {v0}, Lcom/google/android/settings/aware/AwareHelper;->access$100(Lcom/google/android/settings/aware/AwareHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mAwareEnabled:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mAwareAllowed:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mAirplaneMode:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mBatterySaver:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareHelper$SettingsObserver;->mCallback:Lcom/google/android/settings/aware/AwareHelper$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/google/android/settings/aware/AwareHelper$Callback;->onChange(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
