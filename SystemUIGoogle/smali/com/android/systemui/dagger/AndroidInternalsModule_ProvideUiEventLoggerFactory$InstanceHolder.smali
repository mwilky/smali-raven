.class public final Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "AndroidInternalsModule_ProvideUiEventLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/AndroidInternalsModule_ProvideUiEventLoggerFactory;

    return-void
.end method
