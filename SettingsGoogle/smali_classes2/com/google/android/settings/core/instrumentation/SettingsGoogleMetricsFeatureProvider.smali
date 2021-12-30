.class public Lcom/google/android/settings/core/instrumentation/SettingsGoogleMetricsFeatureProvider;
.super Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;
.source "SettingsGoogleMetricsFeatureProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected installLogWriters()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->installLogWriters()V

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v0, Lcom/google/android/settings/core/instrumentation/SearchResultTraceLogWriter;

    invoke-direct {v0}, Lcom/google/android/settings/core/instrumentation/SearchResultTraceLogWriter;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
