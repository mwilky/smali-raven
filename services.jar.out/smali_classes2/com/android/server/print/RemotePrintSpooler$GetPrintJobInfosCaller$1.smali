.class public Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks-IA;)V

    return-void
.end method


# virtual methods
.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->access$000(Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;Ljava/lang/Object;I)V

    return-void
.end method
