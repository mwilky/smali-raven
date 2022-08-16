.class public Lcom/google/android/settings/biometrics/face/FaceFeatureProviderGoogleImpl;
.super Ljava/lang/Object;
.source "FaceFeatureProviderGoogleImpl.java"

# interfaces
.implements Lcom/android/settings/biometrics/face/FaceFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttentionSupported(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f090010

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
