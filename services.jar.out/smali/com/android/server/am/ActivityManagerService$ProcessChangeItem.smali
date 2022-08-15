.class public final Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessChangeItem"
.end annotation


# instance fields
.field public capability:I

.field public changes:I

.field public foregroundActivities:Z

.field public foregroundServiceTypes:I

.field public pid:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
