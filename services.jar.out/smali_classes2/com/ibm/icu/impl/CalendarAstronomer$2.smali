.class public Lcom/ibm/icu/impl/CalendarAstronomer$2;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Lcom/ibm/icu/impl/CalendarAstronomer$CoordFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/ibm/icu/impl/CalendarAstronomer;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/CalendarAstronomer;)V
    .locals 0

    iput-object p1, p0, Lcom/ibm/icu/impl/CalendarAstronomer$2;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;
    .locals 0

    iget-object p0, p0, Lcom/ibm/icu/impl/CalendarAstronomer$2;->this$0:Lcom/ibm/icu/impl/CalendarAstronomer;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunPosition()Lcom/ibm/icu/impl/CalendarAstronomer$Equatorial;

    move-result-object p0

    return-object p0
.end method
