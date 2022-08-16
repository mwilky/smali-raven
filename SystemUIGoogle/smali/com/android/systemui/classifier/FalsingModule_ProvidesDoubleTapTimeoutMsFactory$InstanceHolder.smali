.class public final Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "FalsingModule_ProvidesDoubleTapTimeoutMsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    invoke-direct {v0}, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    return-void
.end method
