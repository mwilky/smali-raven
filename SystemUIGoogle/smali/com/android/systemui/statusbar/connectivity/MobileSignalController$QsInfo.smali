.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;
.super Ljava/lang/Object;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/connectivity/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QsInfo"
.end annotation


# instance fields
.field public final description:Ljava/lang/CharSequence;

.field public final icon:Lcom/android/systemui/statusbar/connectivity/IconState;

.field public final ratTypeIcon:I


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/connectivity/IconState;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->ratTypeIcon:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->icon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$QsInfo;->description:Ljava/lang/CharSequence;

    return-void
.end method
