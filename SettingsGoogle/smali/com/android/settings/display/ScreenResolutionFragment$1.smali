.class Lcom/android/settings/display/ScreenResolutionFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ScreenResolutionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenResolutionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mIsFHDSupport:Z

.field mIsQHDSupport:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionFragment$1;->mIsFHDSupport:Z

    iput-boolean p1, p0, Lcom/android/settings/display/ScreenResolutionFragment$1;->mIsQHDSupport:Z

    return-void
.end method


# virtual methods
.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    new-instance p0, Lcom/android/settings/display/ScreenResolutionController;

    const-string v0, "fragment"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ScreenResolutionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionController;->checkSupportedResolutions()Z

    move-result p0

    return p0
.end method
