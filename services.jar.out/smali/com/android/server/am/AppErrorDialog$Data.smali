.class public Lcom/android/server/am/AppErrorDialog$Data;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field public isRestartableForService:Z

.field public proc:Lcom/android/server/am/ProcessRecord;

.field public repeating:Z

.field public result:Lcom/android/server/am/AppErrorResult;

.field public taskId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
