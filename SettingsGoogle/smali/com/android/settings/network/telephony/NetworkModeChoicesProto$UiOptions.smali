.class public final Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NetworkModeChoicesProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;,
        Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;",
        "Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHOICES_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

.field public static final FORMAT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final format_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private choices_:I

.field private format_:Lcom/google/protobuf/Internal$IntList;

.field private memoizedIsInitialized:B

.field private type_:I


# direct methods
.method static bridge synthetic -$$Nest$maddFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetChoices(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->setChoices(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->setType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;
    .locals 1

    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    new-instance v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    const-class v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->memoizedIsInitialized:B

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private addFormat(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->ensureFormatIsMutable()V

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->getNumber()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private ensureFormatIsMutable()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static newBuilder()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;
    .locals 1

    sget-object v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    return-object v0
.end method

.method private setChoices(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->choices_:I

    return-void
.end method

.method private setType(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->bitField0_:I

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p3, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    if-nez p2, :cond_0

    move p3, v0

    :cond_0
    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->memoizedIsInitialized:B

    return-object v1

    :pswitch_1
    iget-byte p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2

    const-class p1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->PARSER:Lcom/google/protobuf/Parser;

    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "bitField0_"

    aput-object p1, p0, v0

    const-string/jumbo p1, "type_"

    aput-object p1, p0, p3

    const/4 p1, 0x2

    invoke-static {}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p2

    aput-object p2, p0, p1

    const/4 p1, 0x3

    const-string p2, "choices_"

    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "format_"

    aput-object p2, p0, p1

    const/4 p1, 0x5

    invoke-static {}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0002\u0001\u050c\u0000\u0002\u0504\u0001\u0003\u001e"

    sget-object p2, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->DEFAULT_INSTANCE:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder;-><init>(Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$Builder-IA;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChoices()I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->choices_:I

    return p0
.end method

.method public getFormatList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions$PresentFormat;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_:Lcom/google/protobuf/Internal$IntList;

    sget-object v1, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->format_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getType()Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$UiOptions;->type_:I

    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->forNumber(I)Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;->ENABLED_NETWORKS_UNSPECIFIED:Lcom/android/settings/network/telephony/NetworkModeChoicesProto$EnabledNetworks;

    :cond_0
    return-object p0
.end method
