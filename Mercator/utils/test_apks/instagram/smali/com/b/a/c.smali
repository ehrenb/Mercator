.class public final enum Lcom/b/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/c;

.field public static final enum b:Lcom/b/a/c;

.field public static final enum c:Lcom/b/a/c;

.field public static final enum d:Lcom/b/a/c;

.field public static final enum e:Lcom/b/a/c;

.field public static final enum f:Lcom/b/a/c;

.field public static final enum g:Lcom/b/a/c;

.field private static final synthetic h:[Lcom/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventFailed"

    invoke-direct {v0, v1, v3}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->a:Lcom/b/a/c;

    .line 8
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventRecorded"

    invoke-direct {v0, v1, v4}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->b:Lcom/b/a/c;

    .line 9
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventUniqueCountExceeded"

    invoke-direct {v0, v1, v5}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->c:Lcom/b/a/c;

    .line 10
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventParamsCountExceeded"

    invoke-direct {v0, v1, v6}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->d:Lcom/b/a/c;

    .line 11
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventLogCountExceeded"

    invoke-direct {v0, v1, v7}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->e:Lcom/b/a/c;

    .line 12
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventLoggingDelayed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->f:Lcom/b/a/c;

    .line 13
    new-instance v0, Lcom/b/a/c;

    const-string v1, "kFlurryEventAnalyticsDisabled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/b/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/c;->g:Lcom/b/a/c;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/b/a/c;

    sget-object v1, Lcom/b/a/c;->a:Lcom/b/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/c;->b:Lcom/b/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/c;->c:Lcom/b/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/a/c;->d:Lcom/b/a/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/a/c;->e:Lcom/b/a/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/b/a/c;->f:Lcom/b/a/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/a/c;->g:Lcom/b/a/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/c;->h:[Lcom/b/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/c;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/c;

    return-object v0
.end method

.method public static values()[Lcom/b/a/c;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/b/a/c;->h:[Lcom/b/a/c;

    invoke-virtual {v0}, [Lcom/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/c;

    return-object v0
.end method
