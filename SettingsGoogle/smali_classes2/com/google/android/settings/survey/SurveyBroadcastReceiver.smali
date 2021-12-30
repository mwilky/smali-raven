.class public Lcom/google/android/settings/survey/SurveyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SurveyBroadcastReceiver.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.libraries.hats20.SURVEY_DOWNLOADED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/android/settings/overlay/SurveyFeatureProvider;->unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;->mActivity:Landroid/app/Activity;

    const-string v0, "SiteId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lcom/android/settings/overlay/SurveyFeatureProvider;->showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/survey/SurveyBroadcastReceiver;->mActivity:Landroid/app/Activity;

    return-void
.end method
