.class public Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;
.super Landroid/database/ContentObserver;
.source "Vcn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/Vcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VcnMobileDataContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/Vcn;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;->this$0:Lcom/android/server/vcn/Vcn;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;-><init>(Lcom/android/server/vcn/Vcn;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vcn/Vcn$VcnMobileDataContentObserver;->this$0:Lcom/android/server/vcn/Vcn;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
