.class final Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "FalsingModule_ProvidesDoubleTapTimeoutMsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    invoke-direct {v0}, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/classifier/FalsingModule_ProvidesDoubleTapTimeoutMsFactory;

    return-object v0
.end method
