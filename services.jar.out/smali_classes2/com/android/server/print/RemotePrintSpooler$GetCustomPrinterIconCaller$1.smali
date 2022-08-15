.class public Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks-IA;)V

    return-void
.end method


# virtual methods
.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller$1;->this$0:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->access$600(Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;Ljava/lang/Object;I)V

    return-void
.end method
