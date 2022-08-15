.class public Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncHistoryItem"
.end annotation


# instance fields
.field public authorityId:I

.field public downstreamActivity:J

.field public elapsedTime:J

.field public event:I

.field public eventTime:J

.field public extras:Landroid/os/Bundle;

.field public historyId:I

.field public initialization:Z

.field public mesg:Ljava/lang/String;

.field public reason:I

.field public source:I

.field public syncExemptionFlag:I

.field public upstreamActivity:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
