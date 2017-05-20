.class public final Lcom/paypal/android/sdk/ey;
.super Lcom/paypal/android/sdk/bm;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/bz;IZI)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/paypal/android/sdk/bm;-><init>(ILcom/paypal/android/sdk/bz;)V

    iput-boolean p3, p0, Lcom/paypal/android/sdk/ey;->a:Z

    iput p4, p0, Lcom/paypal/android/sdk/ey;->b:I

    return-void
.end method


# virtual methods
.method protected final b()Ljava/lang/String;
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/paypal/android/sdk/ey;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    const-string v4, ",\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v4, Ljava/lang/String;

    new-array v5, v10, [C

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    const-string v5, "\u0000"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "    {\n        \"type\":\"sms_otp\",\n        \"token_identifier\":\"mock_token_id_%s\",\n        \"token_identifier_display\":\"xxx-xxx-%s\"\n    }\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "{\n    \"nonce\":\"mock-login-nonce\",\n    \"error\":\"2fa_required\",\n    \"error_description\":\"Unable to authenticate the user. 2fa flow completion is necessary for successful login.\",\n    \"visitor_id\":\"mock-visitor_id\",\n    \"2fa_enabled\":\"true\",\n    \"2fa_token_identifier\":[\n%s    ]\n}"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x191

    return v0
.end method

.method protected final c(Lcom/paypal/android/sdk/by;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/ey;->a:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/paypal/android/sdk/em;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/paypal/android/sdk/em;

    invoke-virtual {p1}, Lcom/paypal/android/sdk/em;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
