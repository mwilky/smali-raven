.class final Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UserTemplate"
.end annotation


# instance fields
.field final mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field final mUserId:I


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iput p2, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    return-void
.end method
