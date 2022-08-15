.class public final synthetic Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {p0}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    return-void
.end method
