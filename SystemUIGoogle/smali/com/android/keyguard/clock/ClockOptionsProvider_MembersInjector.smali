.class public final Lcom/android/keyguard/clock/ClockOptionsProvider_MembersInjector;
.super Ljava/lang/Object;
.source "ClockOptionsProvider_MembersInjector.java"


# direct methods
.method public static injectMClockInfosProvider(Lcom/android/keyguard/clock/ClockOptionsProvider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/clock/ClockOptionsProvider;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockOptionsProvider;->mClockInfosProvider:Ljavax/inject/Provider;

    return-void
.end method
