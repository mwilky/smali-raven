.class public Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;
.super Ljava/lang/Object;
.source "IpConnectivityMetrics.java"

# interfaces
.implements Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoggerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    return-void
.end method
