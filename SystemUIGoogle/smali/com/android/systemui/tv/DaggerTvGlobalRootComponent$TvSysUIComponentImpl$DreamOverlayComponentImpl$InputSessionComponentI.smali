.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dreams/touch/dagger/InputSessionComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputSessionComponentI"
.end annotation


# instance fields
.field public final gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field public final inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

.field public final name:Ljava/lang/String;

.field public final pilferOnGestureConsume:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    iput-object p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p5, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->pilferOnGestureConsume:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getInputSession()Lcom/android/systemui/dreams/touch/InputSession;
    .locals 4

    new-instance v0, Lcom/android/systemui/dreams/touch/InputSession;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->inputEventListener:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;

    iget-object v3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$InputSessionComponentI;->pilferOnGestureConsume:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/dreams/touch/InputSession;-><init>(Ljava/lang/String;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;Landroid/view/GestureDetector$OnGestureListener;Z)V

    return-object v0
.end method
