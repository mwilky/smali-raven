.class public Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field public authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

.field public gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
