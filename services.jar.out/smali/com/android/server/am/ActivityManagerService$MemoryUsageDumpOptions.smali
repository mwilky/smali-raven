.class public Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryUsageDumpOptions"
.end annotation


# instance fields
.field public dumpDalvik:Z

.field public dumpDetails:Z

.field public dumpFullDetails:Z

.field public dumpProto:Z

.field public dumpSummaryOnly:Z

.field public dumpSwapPss:Z

.field public dumpUnreachable:Z

.field public isCheckinRequest:Z

.field public isCompact:Z

.field public localOnly:Z

.field public oomOnly:Z

.field public packages:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$MemoryUsageDumpOptions;-><init>()V

    return-void
.end method
