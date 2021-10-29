.class public abstract Lcom/android/server/media/MediaSessionPolicyProvider;
.super Ljava/lang/Object;
.source "MediaSessionPolicyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionPolicyProvider$SessionPolicy;
    }
.end annotation


# static fields
.field static final SESSION_POLICY_IGNORE_BUTTON_RECEIVER:I = 0x1

.field static final SESSION_POLICY_IGNORE_BUTTON_SESSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getSessionPoliciesForApplication(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
