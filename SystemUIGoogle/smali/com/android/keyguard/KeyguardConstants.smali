.class public final Lcom/android/keyguard/KeyguardConstants;
.super Ljava/lang/Object;
.source "KeyguardConstants.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "Keyguard"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    return-void
.end method
