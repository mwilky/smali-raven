.class public final Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "TvSystemUIModule_ProvideLeakReportEmailFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;

    invoke-direct {v0}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/tv/TvSystemUIModule_ProvideLeakReportEmailFactory;

    return-void
.end method