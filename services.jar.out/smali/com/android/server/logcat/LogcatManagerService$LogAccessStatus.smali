.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogAccessStatus"
.end annotation


# instance fields
.field public final mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;",
            ">;"
        }
    .end annotation
.end field

.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;->mPendingRequests:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/logcat/LogcatManagerService$LogAccessStatus;-><init>()V

    return-void
.end method
