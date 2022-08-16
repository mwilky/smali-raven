.class public abstract Lcom/android/systemui/statusbar/QsFrameTranslateController;
.super Ljava/lang/Object;
.source "QsFrameTranslateController.java"


# instance fields
.field public mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfaces;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/QsFrameTranslateController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    return-void
.end method


# virtual methods
.method public abstract getNotificationsTopPadding(F)F
.end method

.method public abstract translateQsFrame()V
.end method
