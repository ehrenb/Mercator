.class public Lcom/b/b/an;
.super Lcom/b/b/cg;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/cx$a;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/b/b/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/b/b/an;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/b/b/an;-><init>(B)V

    .line 43
    return-void
.end method

.method private constructor <init>(B)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 46
    const-string v0, "Analytics"

    const-class v1, Lcom/b/b/an;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/b/b/cg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/b/b/an;->d:Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcom/b/b/cw;->a()Lcom/b/b/cw;

    move-result-object v1

    .line 1055
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/an;->g:Z

    .line 1056
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1057
    sget-object v0, Lcom/b/b/an;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, UseHttps = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/b/b/an;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/b/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1060
    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/b/b/cx;->a(Ljava/lang/String;Lcom/b/b/cx$a;)V

    .line 1061
    invoke-direct {p0, v0}, Lcom/b/b/an;->b(Ljava/lang/String;)V

    .line 1062
    sget-object v1, Lcom/b/b/an;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, ReportUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/b/b/an;->b()V

    .line 50
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/b/b/an;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/b/b/an;)V
    .locals 0

    .prologue
    .line 29
    .line 4120
    invoke-virtual {p0}, Lcom/b/b/cg;->b()V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/b/b/an;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/b/b/an;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 94
    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x5

    sget-object v1, Lcom/b/b/an;->e:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/b/b/an;->f:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 72
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 83
    const/4 v0, 0x6

    sget-object v1, Lcom/b/b/an;->e:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_1
    return-void

    .line 72
    :sswitch_0
    const-string v1, "UseHttps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ReportUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/b/b/an;->g:Z

    .line 75
    sget-object v0, Lcom/b/b/an;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, UseHttps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/b/b/an;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 79
    invoke-direct {p0, p2}, Lcom/b/b/an;->b(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/b/b/an;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :sswitch_data_0
    .sparse-switch
        -0xe48ec3c -> :sswitch_0
        0x62629b7b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/b/b/an$2;

    invoke-direct {v0, p0, p3}, Lcom/b/b/an$2;-><init>(Lcom/b/b/an;I)V

    .line 4058
    invoke-static {}, Lcom/b/b/bg;->a()Lcom/b/b/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/b/bg;->b(Ljava/lang/Runnable;)V

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/b/b/cg;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    return-void
.end method

.method protected final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 118
    .line 1106
    iget-object v0, p0, Lcom/b/b/an;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/b/b/an;->f:Ljava/lang/String;

    .line 120
    :goto_0
    const/4 v1, 0x4

    sget-object v2, Lcom/b/b/an;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlurryDataSender: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/b/b/bu;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/b/b/ca;

    invoke-direct {v1}, Lcom/b/b/ca;-><init>()V

    .line 1136
    iput-object v0, v1, Lcom/b/b/cc;->f:Ljava/lang/String;

    .line 2027
    const v0, 0x186a0

    iput v0, v1, Lcom/b/b/di;->w:I

    .line 126
    sget-object v0, Lcom/b/b/cc$a;->c:Lcom/b/b/cc$a;

    .line 2144
    iput-object v0, v1, Lcom/b/b/cc;->g:Lcom/b/b/cc$a;

    .line 127
    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/b/b/ca;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/b/b/ck;

    invoke-direct {v0}, Lcom/b/b/ck;-><init>()V

    .line 3041
    iput-object v0, v1, Lcom/b/b/ca;->c:Lcom/b/b/co;

    .line 4037
    iput-object p1, v1, Lcom/b/b/ca;->b:Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/b/b/an$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/b/b/an$1;-><init>(Lcom/b/b/an;Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    iput-object v0, v1, Lcom/b/b/ca;->a:Lcom/b/b/ca$a;

    .line 160
    invoke-static {}, Lcom/b/b/be;->a()Lcom/b/b/be;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/b/b/be;->a(Ljava/lang/Object;Lcom/b/b/di;)V

    .line 161
    return-void

    .line 1110
    :cond_0
    iget-boolean v0, p0, Lcom/b/b/an;->g:Z

    if-eqz v0, :cond_1

    .line 1111
    const-string v0, "https://data.flurry.com/aap.do"

    goto :goto_0

    .line 1113
    :cond_1
    const-string v0, "http://data.flurry.com/aap.do"

    goto :goto_0
.end method
