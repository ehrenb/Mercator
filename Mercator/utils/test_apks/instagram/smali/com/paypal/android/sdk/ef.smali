.class public final Lcom/paypal/android/sdk/ef;
.super Lcom/paypal/android/sdk/et;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONObject;

.field private e:Lorg/json/JSONArray;

.field private f:Lcom/paypal/android/sdk/eq;

.field private g:Ljava/util/Map;

.field private h:[Lcom/paypal/android/sdk/er;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/bz;Lcom/paypal/android/sdk/ab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/eq;Ljava/util/Map;[Lcom/paypal/android/sdk/er;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    sget-object v1, Lcom/paypal/android/sdk/ci;->g:Lcom/paypal/android/sdk/ci;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/paypal/android/sdk/et;-><init>(Lcom/paypal/android/sdk/ci;Lcom/paypal/android/sdk/bz;Lcom/paypal/android/sdk/ab;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/paypal/android/sdk/ef;->f:Lcom/paypal/android/sdk/eq;

    iput-object p7, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    iput-object p8, p0, Lcom/paypal/android/sdk/ef;->h:[Lcom/paypal/android/sdk/er;

    iput-object p9, p0, Lcom/paypal/android/sdk/ef;->i:Ljava/lang/String;

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/paypal/android/sdk/ef;->l:Z

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/paypal/android/sdk/ef;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/paypal/android/sdk/ef;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/paypal/android/sdk/cd;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sale"

    iput-object v1, p0, Lcom/paypal/android/sdk/ef;->k:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/paypal/android/sdk/ef;->k:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/ef;->k:Ljava/lang/String;

    const-string v1, "PayPal-Request-Id"

    invoke-virtual {p0, v1, p4}, Lcom/paypal/android/sdk/ef;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p11}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PayPal-Partner-Attribution-Id"

    invoke-virtual {p0, v1, p11}, Lcom/paypal/android/sdk/ef;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p12}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PayPal-Client-Metadata-Id"

    invoke-virtual {p0, v1, p12}, Lcom/paypal/android/sdk/ef;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/paypal/android/sdk/ef;
    .locals 0

    iput-boolean p1, p0, Lcom/paypal/android/sdk/ef;->j:Z

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "intent"

    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "payment_method"

    const-string v3, "paypal"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payer"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cancel_url"

    const-string v3, "http://cancelurl"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "return_url"

    const-string v3, "http://returnurl"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "redirect_urls"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->f:Lcom/paypal/android/sdk/eq;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "currency"

    invoke-virtual {v0}, Lcom/paypal/android/sdk/eq;->b()Ljava/util/Currency;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "total"

    invoke-virtual {v0}, Lcom/paypal/android/sdk/eq;->a()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v3, "details"

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "amount"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "description"

    iget-object v3, p0, Lcom/paypal/android/sdk/ef;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->h:[Lcom/paypal/android/sdk/er;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->h:[Lcom/paypal/android/sdk/er;

    array-length v2, v2

    if-lez v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "items"

    iget-object v4, p0, Lcom/paypal/android/sdk/ef;->h:[Lcom/paypal/android/sdk/er;

    invoke-static {v4}, Lcom/paypal/android/sdk/er;->a([Lcom/paypal/android/sdk/er;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "item_list"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "transactions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "invoice_number"

    iget-object v3, p0, Lcom/paypal/android/sdk/ef;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->n:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "custom"

    iget-object v3, p0, Lcom/paypal/android/sdk/ef;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "soft_descriptor"

    iget-object v3, p0, Lcom/paypal/android/sdk/ef;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v2, p0, Lcom/paypal/android/sdk/ef;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "email"

    iget-object v4, p0, Lcom/paypal/android/sdk/ef;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "payee"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "device_info"

    invoke-static {}, Lcom/paypal/android/sdk/dk;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_info"

    invoke-static {}, Lcom/paypal/android/sdk/dg;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "risk_data"

    invoke-static {}, Lcom/paypal/android/sdk/u;->a()Lcom/paypal/android/sdk/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/sdk/u;->c()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/paypal/android/sdk/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "payment"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_info"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/paypal/android/sdk/ef;->l:Z

    if-eqz v0, :cond_8

    const-string v0, "retrieve_shipping_addresses"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string v0, "no_shipping"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/ef;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    const-string v5, "shipping"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "shipping"

    iget-object v5, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    const-string v6, "shipping"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    iget-object v4, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    const-string v5, "subtotal"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "subtotal"

    iget-object v5, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    const-string v6, "subtotal"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v4, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    const-string v5, "tax"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "tax"

    iget-object v5, p0, Lcom/paypal/android/sdk/ef;->g:Ljava/util/Map;

    const-string v6, "tax"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0
.end method

.method public final c()V
    .locals 2

    invoke-virtual {p0}, Lcom/paypal/android/sdk/ef;->m()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "payment_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/ef;->a:Ljava/lang/String;

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/ef;->b:Ljava/lang/String;

    const-string v1, "addresses"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/ef;->c:Lorg/json/JSONArray;

    const-string v1, "funding_options"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "default_option"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/paypal/android/sdk/ef;->d:Lorg/json/JSONObject;

    const-string v1, "alternate_options"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/ef;->e:Lorg/json/JSONArray;

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/paypal/android/sdk/ef;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ef;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/paypal/android/sdk/ef;->m()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/ef;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)Lcom/paypal/android/sdk/ef;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ef;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "{    \"session_id\":\"7N0112287V303050T\",    \"payment_id\":\"PAY-18X32451H0459092JKO7KFUI\",    \"addresses\": [          {             \"city\": \"Columbia\",              \"line2\": \"6073 2nd Street\",              \"line1\": \"Suite 222\",              \"recipient_name\": \"Beverly Jello\",             \"state\": \"MD\",              \"postal_code\": \"21045\",             \"default_address\": false,              \"country_code\": \"US\",              \"type\": \"HOME_OR_WORK\",              \"id\": \"366853\"          },          {             \"city\": \"Austin\",              \"line2\": \"Apt. 222\",              \"line1\": \"52 North Main St. \",              \"recipient_name\": \"Michael Chassen\",             \"state\": \"TX\",              \"postal_code\": \"78729\",             \"default_address\": true,              \"country_code\": \"US\",              \"type\": \"HOME_OR_WORK\",              \"id\": \"366852\"          },          {             \"city\": \"Austin\",              \"line1\": \"202 South State St. \",              \"recipient_name\": \"Sam Stone\",             \"state\": \"TX\",              \"postal_code\": \"78729\",             \"default_address\": true,              \"country_code\": \"US\",              \"type\": \"HOME_OR_WORK\",              \"id\": \"366852\"          }     ],     \"funding_options\":{       \"default_option\":{          \"id\":\"1\",          \"backup_funding_instrument\":{             \"payment_card\":{                \"number\":\"8029\",                \"type\":\"VISA\"             }          },          \"funding_sources\":[             {                \"amount\":{                   \"value\":\"216.85\",                   \"currency\":\"USD\"                },                \"funding_instrument_type\":\"BANK_ACCOUNT\",                \"funding_mode\":\"INSTANT_TRANSFER\",                \"bank_account\":{                   \"bank_name\":\"SunTrust\",                   \"account_number\":\"7416\",                   \"account_number_type\":\"BBAN\",                   \"country_code\":\"US\",                   \"account_type\":\"CHECKING\"                }             },             {                \"amount\":{                   \"value\":\"6.00\",                   \"currency\":\"USD\"                },                \"funding_instrument_type\":\"CREDIT\",                \"funding_mode\":\"INSTANT_TRANSFER\",                \"credit\":{                   \"type\":\"BILL_ME_LATER\",                   \"id\":\"mock-id\"                }             }          ]       },       \"alternate_options\":[          {             \"id\":\"2\",             \"funding_sources\":[                {                   \"amount\":{                      \"value\":\"216.85\",                      \"currency\":\"USD\"                   },                   \"funding_instrument_type\":\"PAYMENT_CARD\",                   \"payment_card\":{                      \"number\":\"8029\",                      \"type\":\"VISA\"                   },                   \"funding_mode\":\"INSTANT_TRANSFER\"                },                {                   \"amount\":{                      \"value\":\"6.00\",                      \"currency\":\"USD\"                   },                   \"funding_instrument_type\":\"BALANCE\",                   \"funding_mode\":\"INSTANT_TRANSFER\"                }             ]          },          {             \"id\":\"3\",             \"funding_sources\":[                {                   \"amount\":{                      \"value\":\"216.85\",                      \"currency\":\"USD\"                   },                   \"funding_instrument_type\":\"PAYMENT_CARD\",                   \"payment_card\":{                      \"number\":\"8011\",                      \"type\":\"VISA\"                   },                   \"funding_mode\":\"INSTANT_TRANSFER\"                },                {                   \"amount\":{                      \"value\":\"6.00\",                      \"currency\":\"USD\"                   },                   \"funding_instrument_type\":\"BALANCE\",                   \"funding_mode\":\"INSTANT_TRANSFER\"                }             ]          }       ]    } }"

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/paypal/android/sdk/ef;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ef;->o:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/paypal/android/sdk/ef;
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/sdk/ef;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final w()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final x()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/ef;->e:Lorg/json/JSONArray;

    return-object v0
.end method
