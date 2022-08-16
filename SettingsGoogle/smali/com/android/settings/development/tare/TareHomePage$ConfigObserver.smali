.class Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;
.super Landroid/database/ContentObserver;
.source "TareHomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/tare/TareHomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigObserver"
.end annotation


# instance fields
.field private mEnableTareSetting:I

.field final synthetic this$0:Lcom/android/settings/development/tare/TareHomePage;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEnableTareSetting(Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->mEnableTareSetting:I

    return p0
.end method

.method constructor <init>(Lcom/android/settings/development/tare/TareHomePage;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->this$0:Lcom/android/settings/development/tare/TareHomePage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private processEnableTareChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->this$0:Lcom/android/settings/development/tare/TareHomePage;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_tare"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->mEnableTareSetting:I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->mEnableTareSetting:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput v1, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->mEnableTareSetting:I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->this$0:Lcom/android/settings/development/tare/TareHomePage;

    iget p0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->mEnableTareSetting:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Lcom/android/settings/development/tare/TareHomePage;->-$$Nest$msetEnabled(Lcom/android/settings/development/tare/TareHomePage;Z)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->processEnableTareChange()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->this$0:Lcom/android/settings/development/tare/TareHomePage;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_tare"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->processEnableTareChange()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/tare/TareHomePage$ConfigObserver;->this$0:Lcom/android/settings/development/tare/TareHomePage;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
