.class final Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscreteOpEvent"
.end annotation


# instance fields
.field final mAttributionChainId:I

.field final mAttributionFlags:I

.field final mNoteDuration:J

.field final mNoteTime:J

.field final mOpFlag:I

.field final mUidState:I

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iput-wide p4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    iput p6, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iput p7, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iput p8, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iput p9, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Landroid/util/TypedXmlSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->serialize(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Access ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v0, v1}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v0, v1}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " milliseconds "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz v0, :cond_1

    const-string v0, " attribution flags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " with chainId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private serialize(Landroid/util/TypedXmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    const/4 v2, 0x0

    const-string/jumbo v3, "nt"

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "nd"

    invoke-interface {p1, v2, v3, v0, v1}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz v0, :cond_1

    const-string v1, "af"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const-string v1, "ci"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    const-string/jumbo v1, "us"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    const-string v1, "f"

    invoke-interface {p1, v2, v1, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public equalsExceptDuration(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget v1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
