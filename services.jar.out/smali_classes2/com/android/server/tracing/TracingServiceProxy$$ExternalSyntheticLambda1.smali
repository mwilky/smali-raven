.class public final synthetic Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/tracing/TraceReportParams;


# direct methods
.method public synthetic constructor <init>(Landroid/tracing/TraceReportParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;->f$0:Landroid/tracing/TraceReportParams;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/tracing/TracingServiceProxy$$ExternalSyntheticLambda1;->f$0:Landroid/tracing/TraceReportParams;

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p0, p1, p2}, Lcom/android/server/tracing/TracingServiceProxy;->$r8$lambda$Ed3-KDnHowImEFWPfsMVkuQO_Gs(Landroid/tracing/TraceReportParams;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method
