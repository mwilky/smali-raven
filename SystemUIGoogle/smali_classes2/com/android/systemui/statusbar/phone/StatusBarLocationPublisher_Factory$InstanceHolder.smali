.class final Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "StatusBarLocationPublisher_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher_Factory;

    return-object v0
.end method
