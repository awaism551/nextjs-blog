--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1 (Debian 12.1-1.pgdg100+1)
-- Dumped by pg_dump version 12.3

-- Started on 2021-10-14 17:03:16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3276 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- TOC entry 748 (class 1247 OID 69598)
-- Name: agent_role_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.agent_role_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 694 (class 1247 OID 69373)
-- Name: holidayFairness_s_order_1_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."holidayFairness_s_order_1_enum" AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 697 (class 1247 OID 69380)
-- Name: holidayFairness_s_order_2_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."holidayFairness_s_order_2_enum" AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 700 (class 1247 OID 69388)
-- Name: holidayFairness_s_order_3_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."holidayFairness_s_order_3_enum" AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 703 (class 1247 OID 69396)
-- Name: holidayFairness_s_order_4_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."holidayFairness_s_order_4_enum" AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 687 (class 1247 OID 69284)
-- Name: holiday_status_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.holiday_status_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 684 (class 1247 OID 69276)
-- Name: holiday_type_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.holiday_type_enum AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 731 (class 1247 OID 69530)
-- Name: managementunit_agent_hours_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_agent_hours_enum AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 722 (class 1247 OID 69510)
-- Name: managementunit_agent_rank_sort_method_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_agent_rank_sort_method_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 719 (class 1247 OID 69504)
-- Name: managementunit_alt_seniority_sort_method_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_alt_seniority_sort_method_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 710 (class 1247 OID 69486)
-- Name: managementunit_applies_from_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_applies_from_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 728 (class 1247 OID 69522)
-- Name: managementunit_batch_order_agent_by_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_batch_order_agent_by_enum AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 713 (class 1247 OID 69492)
-- Name: managementunit_break_placement_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_break_placement_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 754 (class 1247 OID 69634)
-- Name: managementunit_config_rule_by_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_config_rule_by_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 751 (class 1247 OID 69628)
-- Name: managementunit_date_range_method_as_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_date_range_method_as_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 734 (class 1247 OID 69538)
-- Name: managementunit_date_range_method_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_date_range_method_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 737 (class 1247 OID 69544)
-- Name: managementunit_default_days_off_method_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_default_days_off_method_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 740 (class 1247 OID 69550)
-- Name: managementunit_default_num_hours_method_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_default_num_hours_method_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 725 (class 1247 OID 69516)
-- Name: managementunit_params_come_from_agent_with_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_params_come_from_agent_with_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 716 (class 1247 OID 69498)
-- Name: managementunit_seniority_sort_method_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.managementunit_seniority_sort_method_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 784 (class 1247 OID 69713)
-- Name: workShift_shift_type_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public."workShift_shift_type_enum" AS ENUM (
    '1',
    '2',
    '3'
);


--
-- TOC entry 808 (class 1247 OID 69800)
-- Name: work_activities_type_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.work_activities_type_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 825 (class 1247 OID 85456)
-- Name: work_activity_type_enum; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.work_activity_type_enum AS ENUM (
    '1',
    '2'
);


--
-- TOC entry 245 (class 1255 OID 85449)
-- Name: gen_schedule(integer, character varying, character varying); Type: PROCEDURE; Schema: public; Owner: -
--

CREATE PROCEDURE public.gen_schedule(muid integer, start_dt character varying, end_dt character varying)
    LANGUAGE plpgsql
    AS $$

declare

	intrvl		int := 15;		-- time interval in minutes

	f_start_dt	timestamp := start_dt; --'2021-09-21';

	f_end_dt	timestamp := end_dt; -- '2021-09-30';

begin

	

end;

$$;


--
-- TOC entry 258 (class 1255 OID 85450)
-- Name: run_forecast(integer, character varying, character varying, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer); Type: PROCEDURE; Schema: public; Owner: -
--

CREATE PROCEDURE public.run_forecast(svc_que integer, start_dt character varying, end_dt character varying, intvl integer, d_call integer, op_s_time integer, op_e_time integer, pk_s_time integer, pk_e_time integer, pk_call_perc integer, avg_h_time integer, shrinkage_perc integer, s_lvl integer, s_perc integer)
    LANGUAGE plpgsql
    AS $$

declare

	intrvl		int := intvl; -- 15;		-- time interval in minutes

	daily_cl 	int := d_call; -- 5000;	-- expected daily call volume

	op_start	int := op_s_time; --8*60;	-- hours of operation start time in minutes 1 - 1440

	op_end		int := op_e_time; -- 18*60;	-- hours of operation end time in minutes 1 - 1440

	pk_start	int	:= pk_s_time; -- 11*60;	-- peak hours start time in minutes 1 - 1440

	pk_end		int := pk_e_time;-- 16*60;	-- peak hours end time in minutes 1 - 1440

	pk_cl_pct int := pk_call_perc;-- 70;		-- peak hours call percentage 1 - 100

	aht			int := avg_h_time; -- 120;		-- expected AHT in seconds

	shr_pct		int := shrinkage_perc;-- 15;		-- shrinkage percentage 1 - 100

	slvl_sec	int := s_lvl; --20;		-- service level threshold in seconds

	slvl_pct	int := s_perc; -- 80;		-- service level agreement percentage 1- 100

	f_start_dt	timestamp := start_dt;--'2021-09-21';

	f_end_dt	timestamp := end_dt;--'2021-09-30';

	op_hr		int;			-- total hours of operation

	pk_hr		int;			-- total peak hours of operation

	opk_hr		int;			-- total off-peak hours of operation

	pk_hr_cl	int;			-- total peak hour calls

	opk_hr_cl	int;			-- total off-peak hour calls

	pk_int_cl	int;			-- each peak interval calls

	opk_int_cl	int;			-- each off-peak interval calls

	ht_pk_int	int;			-- total handle time peak interval calls

	ht_opk_int	int;			-- total handle time off-peak interval calls

	stf_pk_int	real;			-- avg position staffed peak interval

	stf_opk_int	real;			-- avg position staffed off-peak interval

	shr_pk_int	real;			-- shrinkage peak interval

	shr_opk_int real;			-- shrinkage off-peak interval

	act_stf_pk	int;			-- actual staffed peak intervals

	act_stf_opk	int;			-- actual staffed off-peak intervals

	idx_day		timestamp;

	idx_int		int;

	tmp_day		timestamp;

begin

	op_hr = op_end - op_start;

	pk_hr = pk_end - pk_start;

	opk_hr = op_hr - pk_hr;

	pk_hr_cl = daily_cl * pk_cl_pct / 100;

	opk_hr_cl = daily_cl - pk_hr_cl;

	pk_int_cl = pk_hr_cl / (pk_hr / intrvl);

	opk_int_cl = opk_hr_cl / (opk_hr / intrvl);

	ht_pk_int = pk_int_cl * aht;

	ht_opk_int = opk_int_cl * aht;

	stf_pk_int = ht_pk_int / (intrvl * 60.0);

	stf_opk_int = ht_opk_int / (intrvl * 60.0);

	shr_pk_int = stf_pk_int * shr_pct / 100.0;

	shr_opk_int = stf_opk_int * shr_pct / 100.0;

	act_stf_pk = stf_pk_int + shr_pk_int;

	act_stf_opk = stf_opk_int + shr_opk_int;

	idx_day = f_start_dt;



	while idx_day <= f_end_dt loop

--		raise notice 'day : %', idx_day;

		idx_int = op_start;

		while idx_int < op_end loop

			tmp_day = (idx_day::date + (idx_int::text||' minute')::interval);

			delete from forecast_master where service_queue = svc_que and datetime = tmp_day;

			if idx_int >= pk_start and idx_int < pk_end then

				insert into forecast_master (service_queue, datetime, offered, aht, staffed) values(svc_que, tmp_day, pk_int_cl, aht,act_stf_pk);

			else

				insert into forecast_master (service_queue, datetime, offered, aht, staffed) values(svc_que, tmp_day, opk_int_cl, aht,act_stf_opk);

			end if;



--			raise notice 'interval : %', tmp_day;

			idx_int = idx_int + intrvl;

		end loop;

	

		idx_day = idx_day + '1 day'::interval;

	end loop;



end;

$$;


--
-- TOC entry 244 (class 1255 OID 85451)
-- Name: run_forecast_historical(integer, character varying, character varying, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer, integer); Type: PROCEDURE; Schema: public; Owner: -
--

CREATE PROCEDURE public.run_forecast_historical(svc_que integer, start_dt character varying, end_dt character varying, intvl integer, d_call integer, op_s_time integer, op_e_time integer, pk_s_time integer, pk_e_time integer, pk_call_perc integer, avg_h_time integer, shrinkage_perc integer, s_lvl integer, s_perc integer)
    LANGUAGE plpgsql
    AS $$

declare

	intrvl		int := intvl; -- 15;		-- time interval in minutes

	daily_cl 	int := d_call; -- 5000;	-- expected daily call volume

	op_start	int := op_s_time; --8*60;	-- hours of operation start time in minutes 1 - 1440

	op_end		int := op_e_time; -- 18*60;	-- hours of operation end time in minutes 1 - 1440

	pk_start	int	:= pk_s_time; -- 11*60;	-- peak hours start time in minutes 1 - 1440

	pk_end		int := pk_e_time;-- 16*60;	-- peak hours end time in minutes 1 - 1440

	pk_cl_pct int := pk_call_perc;-- 70;		-- peak hours call percentage 1 - 100

	aht			int := avg_h_time; -- 120;		-- expected AHT in seconds

	shr_pct		int := shrinkage_perc;-- 15;		-- shrinkage percentage 1 - 100

	slvl_sec	int := s_lvl; --20;		-- service level threshold in seconds

	slvl_pct	int := s_perc; -- 80;		-- service level agreement percentage 1- 100

	f_start_dt	timestamp := start_dt;--'2021-09-21';

	f_end_dt	timestamp := end_dt;--'2021-09-30';

	op_hr		int;			-- total hours of operation

	pk_hr		int;			-- total peak hours of operation

	opk_hr		int;			-- total off-peak hours of operation

	pk_hr_cl	int;			-- total peak hour calls

	opk_hr_cl	int;			-- total off-peak hour calls

	pk_int_cl	int;			-- each peak interval calls

	opk_int_cl	int;			-- each off-peak interval calls

	ht_pk_int	int;			-- total handle time peak interval calls

	ht_opk_int	int;			-- total handle time off-peak interval calls

	stf_pk_int	real;			-- avg position staffed peak interval

	stf_opk_int	real;			-- avg position staffed off-peak interval

	shr_pk_int	real;			-- shrinkage peak interval

	shr_opk_int real;			-- shrinkage off-peak interval

	act_stf_pk	int;			-- actual staffed peak intervals

	act_stf_opk	int;			-- actual staffed off-peak intervals

	idx_day		timestamp;

	idx_int		int;

	tmp_day		timestamp;

begin

	op_hr = op_end - op_start;

	pk_hr = pk_end - pk_start;

	opk_hr = op_hr - pk_hr;

	pk_hr_cl = daily_cl * pk_cl_pct / 100;

	opk_hr_cl = daily_cl - pk_hr_cl;

	pk_int_cl = pk_hr_cl / (pk_hr / intrvl);

	opk_int_cl = opk_hr_cl / (opk_hr / intrvl);

	ht_pk_int = pk_int_cl * aht;

	ht_opk_int = opk_int_cl * aht;

	stf_pk_int = ht_pk_int / (intrvl * 60.0);

	stf_opk_int = ht_opk_int / (intrvl * 60.0);

	shr_pk_int = stf_pk_int * shr_pct / 100.0;

	shr_opk_int = stf_opk_int * shr_pct / 100.0;

	act_stf_pk = stf_pk_int + shr_pk_int;

	act_stf_opk = stf_opk_int + shr_opk_int;

	idx_day = f_start_dt;



	while idx_day <= f_end_dt loop

--		raise notice 'day : %', idx_day;

		idx_int = op_start;

		while idx_int < op_end loop

			tmp_day = (idx_day::date + (idx_int::text||' minute')::interval);

			delete from forecast_master where service_queue = svc_que and datetime = tmp_day;

			if idx_int >= pk_start and idx_int < pk_end then

				insert into forecast_master (service_queue, datetime, offered, aht, staffed) values(svc_que, tmp_day, pk_int_cl, aht,act_stf_pk);

			else

				insert into forecast_master (service_queue, datetime, offered, aht, staffed) values(svc_que, tmp_day, opk_int_cl, aht,act_stf_opk);

			end if;



--			raise notice 'interval : %', tmp_day;

			idx_int = idx_int + intrvl;

		end loop;

	

		idx_day = idx_day + '1 day'::interval;

	end loop;



end;

$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 69134)
-- Name: agent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.agent (
    id integer NOT NULL,
    active boolean DEFAULT false NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL,
    login_id integer,
    name character varying(250),
    ag_group character varying,
    h_date timestamp with time zone,
    t_date timestamp with time zone,
    status character varying(50),
    s_name character varying(30),
    time_zone character varying,
    seniority character varying(12),
    memo character varying,
    email character varying(100),
    "Role" public.agent_role_enum,
    mu_id integer
);


--
-- TOC entry 219 (class 1259 OID 69661)
-- Name: agentSkill; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."agentSkill" (
    id integer NOT NULL,
    emp_id integer NOT NULL,
    skill_num character varying NOT NULL,
    level integer NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 218 (class 1259 OID 69659)
-- Name: agentSkill_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."agentSkill_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3277 (class 0 OID 0)
-- Dependencies: 218
-- Name: agentSkill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."agentSkill_id_seq" OWNED BY public."agentSkill".id;


--
-- TOC entry 223 (class 1259 OID 69687)
-- Name: agentTeam; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."agentTeam" (
    id integer NOT NULL,
    emp_id integer NOT NULL,
    team_id integer NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 222 (class 1259 OID 69685)
-- Name: agentTeam_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."agentTeam_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3278 (class 0 OID 0)
-- Dependencies: 222
-- Name: agentTeam_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."agentTeam_id_seq" OWNED BY public."agentTeam".id;


--
-- TOC entry 241 (class 1259 OID 69831)
-- Name: agent_adherence_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.agent_adherence_history (
    id integer NOT NULL,
    agent_id integer NOT NULL,
    seg_state character varying(30) NOT NULL,
    seg_date timestamp with time zone NOT NULL,
    seg_start_time integer NOT NULL,
    seg_end_time integer NOT NULL,
    actual_state character varying(30) NOT NULL,
    actual_start_time timestamp with time zone NOT NULL,
    actual_end_time timestamp with time zone NOT NULL,
    in_adherence boolean NOT NULL,
    tenant_id integer DEFAULT 0 NOT NULL,
    acd_id integer DEFAULT 0 NOT NULL,
    created_on timestamp with time zone DEFAULT now() NOT NULL,
    updated_on timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 240 (class 1259 OID 69829)
-- Name: agent_adherence_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.agent_adherence_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3279 (class 0 OID 0)
-- Dependencies: 240
-- Name: agent_adherence_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.agent_adherence_history_id_seq OWNED BY public.agent_adherence_history.id;


--
-- TOC entry 202 (class 1259 OID 69132)
-- Name: agent_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3280 (class 0 OID 0)
-- Dependencies: 202
-- Name: agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.agent_id_seq OWNED BY public.agent.id;


--
-- TOC entry 209 (class 1259 OID 69192)
-- Name: dashboard; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dashboard (
    id integer NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL,
    "userId" character varying NOT NULL,
    widget character varying NOT NULL
);


--
-- TOC entry 208 (class 1259 OID 69190)
-- Name: dashboard_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dashboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3281 (class 0 OID 0)
-- Dependencies: 208
-- Name: dashboard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dashboard_id_seq OWNED BY public.dashboard.id;


--
-- TOC entry 215 (class 1259 OID 69572)
-- Name: employee_segment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employee_segment (
    id integer NOT NULL,
    seg_code character varying(30) NOT NULL,
    emp_id character varying(50) NOT NULL,
    date timestamp with time zone NOT NULL,
    type character varying NOT NULL,
    s_time character varying(10) NOT NULL,
    e_time character varying(10) NOT NULL,
    memo character varying DEFAULT ''::character varying NOT NULL,
    duration character varying DEFAULT ''::character varying NOT NULL,
    created_on timestamp with time zone DEFAULT now() NOT NULL,
    updated_on timestamp with time zone DEFAULT now() NOT NULL,
    s_time_mins integer DEFAULT 0 NOT NULL,
    e_time_mins integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 69570)
-- Name: employee_segment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employee_segment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3282 (class 0 OID 0)
-- Dependencies: 214
-- Name: employee_segment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employee_segment_id_seq OWNED BY public.employee_segment.id;


--
-- TOC entry 233 (class 1259 OID 69770)
-- Name: forecast_master; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forecast_master (
    service_queue integer NOT NULL,
    datetime timestamp without time zone NOT NULL,
    offered integer,
    aht integer,
    staffed integer,
    scheduled integer DEFAULT 0 NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 69291)
-- Name: holiday; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.holiday (
    id integer NOT NULL,
    date timestamp with time zone,
    day character varying(30),
    name character varying(250),
    type public.holiday_type_enum,
    status public.holiday_status_enum,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 213 (class 1259 OID 69405)
-- Name: holidayFairness; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."holidayFairness" (
    id integer NOT NULL,
    mu_id integer,
    holiday_id integer,
    s_order_1 public."holidayFairness_s_order_1_enum",
    s_order_2 public."holidayFairness_s_order_2_enum",
    s_order_3 public."holidayFairness_s_order_3_enum",
    s_order_4 public."holidayFairness_s_order_4_enum",
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 212 (class 1259 OID 69403)
-- Name: holidayFairness_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."holidayFairness_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3283 (class 0 OID 0)
-- Dependencies: 212
-- Name: holidayFairness_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."holidayFairness_id_seq" OWNED BY public."holidayFairness".id;


--
-- TOC entry 210 (class 1259 OID 69289)
-- Name: holiday_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.holiday_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 210
-- Name: holiday_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.holiday_id_seq OWNED BY public.holiday.id;


--
-- TOC entry 205 (class 1259 OID 69148)
-- Name: managementunit; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.managementunit (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    first_day_of_week character varying(20) NOT NULL,
    time_zone character varying(100) NOT NULL,
    opening_hours character varying NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL,
    min_time_between_schedules character varying,
    min_rest_per_week character varying,
    even_distribute_work boolean,
    schedule_if_no_valid_pattern boolean,
    partial_day_activities_swap boolean,
    consistent_start_swap boolean,
    grant_agent_pref_order integer,
    schedule_agents_in_team_using character varying(250),
    assign_ag_same_lunch_time boolean,
    assign_ag_same_break_time boolean,
    "Ag_Data_Group" character varying(250),
    sl_goal integer,
    sl_goal_records integer,
    aht integer,
    asa_goal integer,
    currency_format character varying(250),
    hourly_rate character varying(250),
    pattern_types character varying,
    num_of_weeks integer,
    multi_week_anchor_date timestamp with time zone,
    date_range_length integer,
    date_range_anchor_date timestamp with time zone,
    count_days character varying,
    min_num_off_day integer,
    max_num_off_day integer,
    min_day_hours character varying,
    max_day_hours character varying,
    min_hours character varying,
    max_hours character varying,
    min_days_off integer,
    min_days_off_rolling integer,
    max_weekly_hours character varying,
    max_week_rolling integer,
    preferred_groups character varying,
    agent_data_group character varying(100),
    preferred_values character varying,
    est_staff_cal_method character varying,
    audit_sch_changes boolean,
    allow_items_in_journal boolean,
    num_of_past_days integer,
    sch_release_date_from timestamp with time zone,
    sch_release_date_to timestamp with time zone,
    notify_agent_schedule_change boolean,
    notify_supervisors_schedule_change boolean,
    supervisor_assignment character varying(250),
    date_range_past_days integer,
    date_range_future_days integer,
    applies_from public.managementunit_applies_from_enum,
    break_placement public.managementunit_break_placement_enum,
    seniority_sort_method public.managementunit_seniority_sort_method_enum,
    alt_seniority_sort_method public.managementunit_alt_seniority_sort_method_enum,
    agent_rank_sort_method public.managementunit_agent_rank_sort_method_enum,
    params_come_from_agent_with public.managementunit_params_come_from_agent_with_enum,
    batch_order_agent_by public.managementunit_batch_order_agent_by_enum,
    agent_hours public.managementunit_agent_hours_enum,
    date_range_method public.managementunit_date_range_method_enum,
    default_days_off_method public.managementunit_default_days_off_method_enum,
    default_num_hours_method public.managementunit_default_num_hours_method_enum,
    no_of_cons_days_off_f integer,
    no_of_cons_days_off_t integer,
    no_of_cons_days_to_work_f integer,
    no_of_cons_days_to_work_t integer,
    date_range_method_as public.managementunit_date_range_method_as_enum,
    config_rule_by public.managementunit_config_rule_by_enum,
    "Config_Ag_Data_Group" character varying(250)
);


--
-- TOC entry 204 (class 1259 OID 69146)
-- Name: managementunit_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.managementunit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 204
-- Name: managementunit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.managementunit_id_seq OWNED BY public.managementunit.id;


--
-- TOC entry 224 (class 1259 OID 69695)
-- Name: seg_ams_state; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.seg_ams_state (
    ams_state bigint NOT NULL,
    seg_code character varying(30) NOT NULL
);


--
-- TOC entry 207 (class 1259 OID 69163)
-- Name: segment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.segment (
    id integer NOT NULL,
    code character varying(30) NOT NULL,
    rank integer NOT NULL,
    "desc" character varying(30) NOT NULL,
    color character varying(30) NOT NULL,
    f_color character varying(30) NOT NULL,
    d_duration character varying DEFAULT ''::character varying NOT NULL,
    created_on timestamp with time zone DEFAULT now() NOT NULL,
    updated_on timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 206 (class 1259 OID 69161)
-- Name: segment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.segment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 206
-- Name: segment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.segment_id_seq OWNED BY public.segment.id;


--
-- TOC entry 232 (class 1259 OID 69750)
-- Name: shrinkage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shrinkage (
    id integer NOT NULL,
    from_date timestamp with time zone,
    to_date timestamp with time zone,
    absenteeism integer,
    time_off integer,
    meetings integer,
    training integer,
    coaching integer,
    other integer,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 231 (class 1259 OID 69748)
-- Name: shrinkage_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shrinkage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 231
-- Name: shrinkage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shrinkage_id_seq OWNED BY public.shrinkage.id;


--
-- TOC entry 217 (class 1259 OID 69643)
-- Name: skill; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.skill (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    number character varying(200) NOT NULL,
    type character varying(200) NOT NULL,
    svc_lvl_target_perc integer DEFAULT 0 NOT NULL,
    svc_lvl_target_sec integer DEFAULT 0 NOT NULL,
    timed_acd_intv integer DEFAULT 0 NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    created_on timestamp with time zone DEFAULT now() NOT NULL,
    updated_on timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 216 (class 1259 OID 69641)
-- Name: skill_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 216
-- Name: skill_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.skill_id_seq OWNED BY public.skill.id;


--
-- TOC entry 230 (class 1259 OID 69737)
-- Name: specialEvent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."specialEvent" (
    id integer NOT NULL,
    name character varying,
    imp_delay integer,
    imp_duration integer,
    imp_ratio integer,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 229 (class 1259 OID 69735)
-- Name: specialEvent_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."specialEvent_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 229
-- Name: specialEvent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."specialEvent_id_seq" OWNED BY public."specialEvent".id;


--
-- TOC entry 221 (class 1259 OID 69674)
-- Name: team; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.team (
    id integer NOT NULL,
    name character varying,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 220 (class 1259 OID 69672)
-- Name: team_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 220
-- Name: team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;


--
-- TOC entry 228 (class 1259 OID 69721)
-- Name: workShift; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."workShift" (
    id integer NOT NULL,
    name character varying,
    activate boolean DEFAULT false NOT NULL,
    shift_type public."workShift_shift_type_enum",
    min_hours_per_week integer,
    max_hours_per_week integer,
    min_days_per_week integer,
    max_days_per_week integer,
    shift_start character varying,
    shift_len integer,
    days_per_week integer,
    hours_per_week integer,
    "min_Int" integer,
    days_off_allow boolean DEFAULT false NOT NULL,
    sch_inc integer,
    opt_meth character varying DEFAULT 'Optimum'::character varying NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL,
    apply_to text
);


--
-- TOC entry 227 (class 1259 OID 69719)
-- Name: workShift_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."workShift_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 227
-- Name: workShift_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."workShift_id_seq" OWNED BY public."workShift".id;


--
-- TOC entry 237 (class 1259 OID 69807)
-- Name: work_activities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work_activities (
    id integer NOT NULL,
    name character varying,
    type public.work_activities_type_enum,
    min_delay character varying,
    duration character varying,
    increment character varying,
    min_int integer,
    paid_portion character varying,
    color character varying,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 69805)
-- Name: work_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.work_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 236
-- Name: work_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.work_activities_id_seq OWNED BY public.work_activities.id;


--
-- TOC entry 243 (class 1259 OID 85463)
-- Name: work_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work_activity (
    id integer NOT NULL,
    name character varying,
    type public.work_activity_type_enum,
    min_delay character varying,
    duration character varying,
    increment character varying,
    min_int integer,
    paid_portion character varying,
    color character varying,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 242 (class 1259 OID 85461)
-- Name: work_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.work_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 242
-- Name: work_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.work_activity_id_seq OWNED BY public.work_activity.id;


--
-- TOC entry 226 (class 1259 OID 69700)
-- Name: work_condition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work_condition (
    id integer NOT NULL,
    name character varying,
    is_gen boolean DEFAULT false NOT NULL,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL,
    hours_of_work_per_day integer,
    as_of character varying,
    days_to_incl text
);


--
-- TOC entry 239 (class 1259 OID 69820)
-- Name: work_condition_activities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work_condition_activities (
    id integer NOT NULL,
    cond_id integer,
    activity_id integer,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 238 (class 1259 OID 69818)
-- Name: work_condition_activities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.work_condition_activities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3294 (class 0 OID 0)
-- Dependencies: 238
-- Name: work_condition_activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.work_condition_activities_id_seq OWNED BY public.work_condition_activities.id;


--
-- TOC entry 225 (class 1259 OID 69698)
-- Name: work_condition_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.work_condition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3295 (class 0 OID 0)
-- Dependencies: 225
-- Name: work_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.work_condition_id_seq OWNED BY public.work_condition.id;


--
-- TOC entry 235 (class 1259 OID 69791)
-- Name: work_shift_condition; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.work_shift_condition (
    id integer NOT NULL,
    shift_id integer,
    cond_id integer,
    "createdOn" timestamp with time zone DEFAULT now() NOT NULL,
    "updatedOn" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- TOC entry 234 (class 1259 OID 69789)
-- Name: work_shift_condition_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.work_shift_condition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3296 (class 0 OID 0)
-- Dependencies: 234
-- Name: work_shift_condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.work_shift_condition_id_seq OWNED BY public.work_shift_condition.id;


--
-- TOC entry 2984 (class 2604 OID 69137)
-- Name: agent id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.agent ALTER COLUMN id SET DEFAULT nextval('public.agent_id_seq'::regclass);


--
-- TOC entry 3018 (class 2604 OID 69664)
-- Name: agentSkill id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."agentSkill" ALTER COLUMN id SET DEFAULT nextval('public."agentSkill_id_seq"'::regclass);


--
-- TOC entry 3024 (class 2604 OID 69690)
-- Name: agentTeam id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."agentTeam" ALTER COLUMN id SET DEFAULT nextval('public."agentTeam_id_seq"'::regclass);


--
-- TOC entry 3053 (class 2604 OID 69834)
-- Name: agent_adherence_history id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.agent_adherence_history ALTER COLUMN id SET DEFAULT nextval('public.agent_adherence_history_id_seq'::regclass);


--
-- TOC entry 2995 (class 2604 OID 69195)
-- Name: dashboard id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dashboard ALTER COLUMN id SET DEFAULT nextval('public.dashboard_id_seq'::regclass);


--
-- TOC entry 3004 (class 2604 OID 69575)
-- Name: employee_segment id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_segment ALTER COLUMN id SET DEFAULT nextval('public.employee_segment_id_seq'::regclass);


--
-- TOC entry 2998 (class 2604 OID 69294)
-- Name: holiday id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.holiday ALTER COLUMN id SET DEFAULT nextval('public.holiday_id_seq'::regclass);


--
-- TOC entry 3001 (class 2604 OID 69408)
-- Name: holidayFairness id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."holidayFairness" ALTER COLUMN id SET DEFAULT nextval('public."holidayFairness_id_seq"'::regclass);


--
-- TOC entry 2988 (class 2604 OID 69151)
-- Name: managementunit id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managementunit ALTER COLUMN id SET DEFAULT nextval('public.managementunit_id_seq'::regclass);


--
-- TOC entry 2991 (class 2604 OID 69166)
-- Name: segment id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.segment ALTER COLUMN id SET DEFAULT nextval('public.segment_id_seq'::regclass);


--
-- TOC entry 3040 (class 2604 OID 69753)
-- Name: shrinkage id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shrinkage ALTER COLUMN id SET DEFAULT nextval('public.shrinkage_id_seq'::regclass);


--
-- TOC entry 3011 (class 2604 OID 69646)
-- Name: skill id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill ALTER COLUMN id SET DEFAULT nextval('public.skill_id_seq'::regclass);


--
-- TOC entry 3037 (class 2604 OID 69740)
-- Name: specialEvent id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."specialEvent" ALTER COLUMN id SET DEFAULT nextval('public."specialEvent_id_seq"'::regclass);


--
-- TOC entry 3021 (class 2604 OID 69677)
-- Name: team id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);


--
-- TOC entry 3031 (class 2604 OID 69724)
-- Name: workShift id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."workShift" ALTER COLUMN id SET DEFAULT nextval('public."workShift_id_seq"'::regclass);


--
-- TOC entry 3047 (class 2604 OID 69810)
-- Name: work_activities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_activities ALTER COLUMN id SET DEFAULT nextval('public.work_activities_id_seq'::regclass);


--
-- TOC entry 3058 (class 2604 OID 85466)
-- Name: work_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_activity ALTER COLUMN id SET DEFAULT nextval('public.work_activity_id_seq'::regclass);


--
-- TOC entry 3027 (class 2604 OID 69703)
-- Name: work_condition id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_condition ALTER COLUMN id SET DEFAULT nextval('public.work_condition_id_seq'::regclass);


--
-- TOC entry 3050 (class 2604 OID 69823)
-- Name: work_condition_activities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_condition_activities ALTER COLUMN id SET DEFAULT nextval('public.work_condition_activities_id_seq'::regclass);


--
-- TOC entry 3044 (class 2604 OID 69794)
-- Name: work_shift_condition id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_shift_condition ALTER COLUMN id SET DEFAULT nextval('public.work_shift_condition_id_seq'::regclass);


--
-- TOC entry 3230 (class 0 OID 69134)
-- Dependencies: 203
-- Data for Name: agent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.agent VALUES (37, true, '2021-09-21 23:43:31.286251+00', '2021-10-08 13:21:21.802116+00', 500004, 'Brian Adam', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO public.agent VALUES (36, true, '2021-09-21 23:43:31.284652+00', '2021-10-08 13:21:21.802116+00', 500003, 'Bill Brown', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO public.agent VALUES (34, true, '2021-09-21 23:43:31.279019+00', '2021-10-08 13:21:21.802116+00', 500001, 'James Alex', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO public.agent VALUES (33, true, '2021-09-21 23:43:31.274223+00', '2021-10-08 13:21:21.802116+00', 500002, 'John Watson', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL);
INSERT INTO public.agent VALUES (38, true, '2021-09-21 23:43:31.290819+00', '2021-10-08 13:21:21.802116+00', 500005, 'Paul Adams', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', NULL);


--
-- TOC entry 3246 (class 0 OID 69661)
-- Dependencies: 219
-- Data for Name: agentSkill; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."agentSkill" VALUES (1, 6, '10', 6, '2021-09-20 17:32:16.48371+00', '2021-09-20 17:32:16.48371+00');
INSERT INTO public."agentSkill" VALUES (2, 7, '20', 10, '2021-09-20 17:32:17.164583+00', '2021-09-20 17:32:17.164583+00');
INSERT INTO public."agentSkill" VALUES (3, 7, '10', 2, '2021-09-20 17:32:17.164583+00', '2021-09-20 17:32:17.164583+00');
INSERT INTO public."agentSkill" VALUES (4, 8, '10', 1, '2021-09-20 17:32:17.172053+00', '2021-09-20 17:32:17.172053+00');
INSERT INTO public."agentSkill" VALUES (5, 8, '20', 3, '2021-09-20 17:32:17.172053+00', '2021-09-20 17:32:17.172053+00');
INSERT INTO public."agentSkill" VALUES (6, 8, '30', 5, '2021-09-20 17:32:17.172053+00', '2021-09-20 17:32:17.172053+00');
INSERT INTO public."agentSkill" VALUES (7, 8, '40', 7, '2021-09-20 17:32:17.172053+00', '2021-09-20 17:32:17.172053+00');
INSERT INTO public."agentSkill" VALUES (38, 27, '1', 8, '2021-09-21 23:40:13.486722+00', '2021-09-21 23:40:13.486722+00');
INSERT INTO public."agentSkill" VALUES (39, 27, '2', 7, '2021-09-21 23:40:13.486722+00', '2021-09-21 23:40:13.486722+00');
INSERT INTO public."agentSkill" VALUES (40, 27, '3', 4, '2021-09-21 23:40:13.486722+00', '2021-09-21 23:40:13.486722+00');
INSERT INTO public."agentSkill" VALUES (41, 28, '1', 6, '2021-09-21 23:40:13.487516+00', '2021-09-21 23:40:13.487516+00');
INSERT INTO public."agentSkill" VALUES (42, 28, '2', 9, '2021-09-21 23:40:13.487516+00', '2021-09-21 23:40:13.487516+00');
INSERT INTO public."agentSkill" VALUES (43, 28, '3', 7, '2021-09-21 23:40:13.487516+00', '2021-09-21 23:40:13.487516+00');
INSERT INTO public."agentSkill" VALUES (44, 29, '1', 5, '2021-09-21 23:40:13.487835+00', '2021-09-21 23:40:13.487835+00');
INSERT INTO public."agentSkill" VALUES (45, 29, '2', 9, '2021-09-21 23:40:13.487835+00', '2021-09-21 23:40:13.487835+00');
INSERT INTO public."agentSkill" VALUES (46, 29, '3', 7, '2021-09-21 23:40:13.487835+00', '2021-09-21 23:40:13.487835+00');
INSERT INTO public."agentSkill" VALUES (47, 23, '1', 2, '2021-09-21 23:40:13.497209+00', '2021-09-21 23:40:13.497209+00');
INSERT INTO public."agentSkill" VALUES (48, 23, '2', 5, '2021-09-21 23:40:13.497209+00', '2021-09-21 23:40:13.497209+00');
INSERT INTO public."agentSkill" VALUES (49, 23, '3', 6, '2021-09-21 23:40:13.497209+00', '2021-09-21 23:40:13.497209+00');
INSERT INTO public."agentSkill" VALUES (50, 26, '1', 4, '2021-09-21 23:40:13.497535+00', '2021-09-21 23:40:13.497535+00');
INSERT INTO public."agentSkill" VALUES (51, 26, '2', 7, '2021-09-21 23:40:13.497535+00', '2021-09-21 23:40:13.497535+00');
INSERT INTO public."agentSkill" VALUES (52, 26, '3', 5, '2021-09-21 23:40:13.497535+00', '2021-09-21 23:40:13.497535+00');
INSERT INTO public."agentSkill" VALUES (53, 30, '1', 8, '2021-09-21 23:40:13.499379+00', '2021-09-21 23:40:13.499379+00');
INSERT INTO public."agentSkill" VALUES (54, 30, '2', 5, '2021-09-21 23:40:13.499379+00', '2021-09-21 23:40:13.499379+00');
INSERT INTO public."agentSkill" VALUES (55, 30, '3', 9, '2021-09-21 23:40:13.499379+00', '2021-09-21 23:40:13.499379+00');
INSERT INTO public."agentSkill" VALUES (56, 22, '1', 5, '2021-09-21 23:40:13.499678+00', '2021-09-21 23:40:13.499678+00');
INSERT INTO public."agentSkill" VALUES (57, 22, '2', 3, '2021-09-21 23:40:13.499678+00', '2021-09-21 23:40:13.499678+00');
INSERT INTO public."agentSkill" VALUES (58, 22, '3', 5, '2021-09-21 23:40:13.499678+00', '2021-09-21 23:40:13.499678+00');
INSERT INTO public."agentSkill" VALUES (59, 24, '1', 4, '2021-09-21 23:40:13.503888+00', '2021-09-21 23:40:13.503888+00');
INSERT INTO public."agentSkill" VALUES (60, 24, '2', 6, '2021-09-21 23:40:13.503888+00', '2021-09-21 23:40:13.503888+00');
INSERT INTO public."agentSkill" VALUES (61, 24, '3', 5, '2021-09-21 23:40:13.503888+00', '2021-09-21 23:40:13.503888+00');
INSERT INTO public."agentSkill" VALUES (62, 31, '1', 6, '2021-09-21 23:40:13.506247+00', '2021-09-21 23:40:13.506247+00');
INSERT INTO public."agentSkill" VALUES (63, 31, '2', 8, '2021-09-21 23:40:13.506247+00', '2021-09-21 23:40:13.506247+00');
INSERT INTO public."agentSkill" VALUES (64, 31, '3', 4, '2021-09-21 23:40:13.506247+00', '2021-09-21 23:40:13.506247+00');
INSERT INTO public."agentSkill" VALUES (65, 25, '1', 5, '2021-09-21 23:40:13.508401+00', '2021-09-21 23:40:13.508401+00');
INSERT INTO public."agentSkill" VALUES (66, 25, '2', 3, '2021-09-21 23:40:13.508401+00', '2021-09-21 23:40:13.508401+00');
INSERT INTO public."agentSkill" VALUES (67, 25, '3', 6, '2021-09-21 23:40:13.508401+00', '2021-09-21 23:40:13.508401+00');
INSERT INTO public."agentSkill" VALUES (98, 44, '1', 1, '2021-09-22 15:54:55.340879+00', '2021-09-22 15:54:55.340879+00');
INSERT INTO public."agentSkill" VALUES (99, 45, '1', 1, '2021-09-22 15:54:55.341127+00', '2021-09-22 15:54:55.341127+00');
INSERT INTO public."agentSkill" VALUES (100, 44, '2', 2, '2021-09-22 15:54:55.340879+00', '2021-09-22 15:54:55.340879+00');
INSERT INTO public."agentSkill" VALUES (101, 44, '3', 3, '2021-09-22 15:54:55.340879+00', '2021-09-22 15:54:55.340879+00');
INSERT INTO public."agentSkill" VALUES (102, 45, '2', 2, '2021-09-22 15:54:55.341127+00', '2021-09-22 15:54:55.341127+00');
INSERT INTO public."agentSkill" VALUES (103, 45, '3', 3, '2021-09-22 15:54:55.341127+00', '2021-09-22 15:54:55.341127+00');
INSERT INTO public."agentSkill" VALUES (104, 46, '1', 1, '2021-09-22 15:54:55.342295+00', '2021-09-22 15:54:55.342295+00');
INSERT INTO public."agentSkill" VALUES (105, 46, '2', 2, '2021-09-22 15:54:55.342295+00', '2021-09-22 15:54:55.342295+00');
INSERT INTO public."agentSkill" VALUES (106, 46, '3', 3, '2021-09-22 15:54:55.342295+00', '2021-09-22 15:54:55.342295+00');
INSERT INTO public."agentSkill" VALUES (107, 47, '1', 1, '2021-09-22 15:54:55.343393+00', '2021-09-22 15:54:55.343393+00');
INSERT INTO public."agentSkill" VALUES (108, 47, '2', 2, '2021-09-22 15:54:55.343393+00', '2021-09-22 15:54:55.343393+00');
INSERT INTO public."agentSkill" VALUES (109, 47, '3', 3, '2021-09-22 15:54:55.343393+00', '2021-09-22 15:54:55.343393+00');
INSERT INTO public."agentSkill" VALUES (110, 48, '1', 1, '2021-09-22 15:54:55.344514+00', '2021-09-22 15:54:55.344514+00');
INSERT INTO public."agentSkill" VALUES (111, 48, '2', 2, '2021-09-22 15:54:55.344514+00', '2021-09-22 15:54:55.344514+00');
INSERT INTO public."agentSkill" VALUES (112, 48, '3', 3, '2021-09-22 15:54:55.344514+00', '2021-09-22 15:54:55.344514+00');
INSERT INTO public."agentSkill" VALUES (113, 50, '1', 1, '2021-09-22 15:54:55.34682+00', '2021-09-22 15:54:55.34682+00');
INSERT INTO public."agentSkill" VALUES (114, 50, '2', 2, '2021-09-22 15:54:55.34682+00', '2021-09-22 15:54:55.34682+00');
INSERT INTO public."agentSkill" VALUES (115, 50, '3', 3, '2021-09-22 15:54:55.34682+00', '2021-09-22 15:54:55.34682+00');
INSERT INTO public."agentSkill" VALUES (116, 51, '1', 1, '2021-09-22 15:54:55.348551+00', '2021-09-22 15:54:55.348551+00');
INSERT INTO public."agentSkill" VALUES (117, 51, '2', 2, '2021-09-22 15:54:55.348551+00', '2021-09-22 15:54:55.348551+00');
INSERT INTO public."agentSkill" VALUES (118, 51, '3', 3, '2021-09-22 15:54:55.348551+00', '2021-09-22 15:54:55.348551+00');
INSERT INTO public."agentSkill" VALUES (119, 43, '1', 4, '2021-09-22 15:54:55.349525+00', '2021-09-22 15:54:55.349525+00');
INSERT INTO public."agentSkill" VALUES (120, 43, '2', 9, '2021-09-22 15:54:55.349525+00', '2021-09-22 15:54:55.349525+00');
INSERT INTO public."agentSkill" VALUES (121, 43, '3', 7, '2021-09-22 15:54:55.349525+00', '2021-09-22 15:54:55.349525+00');
INSERT INTO public."agentSkill" VALUES (122, 52, '1', 1, '2021-09-22 15:54:55.349937+00', '2021-09-22 15:54:55.349937+00');
INSERT INTO public."agentSkill" VALUES (123, 52, '2', 2, '2021-09-22 15:54:55.349937+00', '2021-09-22 15:54:55.349937+00');
INSERT INTO public."agentSkill" VALUES (124, 52, '3', 3, '2021-09-22 15:54:55.349937+00', '2021-09-22 15:54:55.349937+00');
INSERT INTO public."agentSkill" VALUES (125, 49, '1', 1, '2021-09-22 15:54:55.350332+00', '2021-09-22 15:54:55.350332+00');
INSERT INTO public."agentSkill" VALUES (126, 49, '2', 2, '2021-09-22 15:54:55.350332+00', '2021-09-22 15:54:55.350332+00');
INSERT INTO public."agentSkill" VALUES (127, 49, '3', 3, '2021-09-22 15:54:55.350332+00', '2021-09-22 15:54:55.350332+00');
INSERT INTO public."agentSkill" VALUES (128, 53, '1', 1, '2021-09-22 15:54:55.353292+00', '2021-09-22 15:54:55.353292+00');
INSERT INTO public."agentSkill" VALUES (129, 53, '2', 2, '2021-09-22 15:54:55.353292+00', '2021-09-22 15:54:55.353292+00');
INSERT INTO public."agentSkill" VALUES (130, 53, '3', 3, '2021-09-22 15:54:55.353292+00', '2021-09-22 15:54:55.353292+00');
INSERT INTO public."agentSkill" VALUES (131, 54, '1', 1, '2021-09-22 15:54:55.354559+00', '2021-09-22 15:54:55.354559+00');
INSERT INTO public."agentSkill" VALUES (132, 54, '2', 2, '2021-09-22 15:54:55.354559+00', '2021-09-22 15:54:55.354559+00');
INSERT INTO public."agentSkill" VALUES (133, 54, '3', 3, '2021-09-22 15:54:55.354559+00', '2021-09-22 15:54:55.354559+00');
INSERT INTO public."agentSkill" VALUES (134, 55, '1', 1, '2021-09-22 15:54:55.356332+00', '2021-09-22 15:54:55.356332+00');
INSERT INTO public."agentSkill" VALUES (135, 55, '2', 2, '2021-09-22 15:54:55.356332+00', '2021-09-22 15:54:55.356332+00');
INSERT INTO public."agentSkill" VALUES (136, 55, '3', 3, '2021-09-22 15:54:55.356332+00', '2021-09-22 15:54:55.356332+00');
INSERT INTO public."agentSkill" VALUES (137, 56, '1', 1, '2021-09-22 15:54:55.356789+00', '2021-09-22 15:54:55.356789+00');
INSERT INTO public."agentSkill" VALUES (138, 56, '2', 2, '2021-09-22 15:54:55.356789+00', '2021-09-22 15:54:55.356789+00');
INSERT INTO public."agentSkill" VALUES (139, 56, '3', 3, '2021-09-22 15:54:55.356789+00', '2021-09-22 15:54:55.356789+00');
INSERT INTO public."agentSkill" VALUES (185, 68, '1', 1, '2021-09-22 15:54:55.372706+00', '2021-09-22 15:54:55.372706+00');
INSERT INTO public."agentSkill" VALUES (186, 68, '2', 2, '2021-09-22 15:54:55.372706+00', '2021-09-22 15:54:55.372706+00');
INSERT INTO public."agentSkill" VALUES (187, 68, '3', 3, '2021-09-22 15:54:55.372706+00', '2021-09-22 15:54:55.372706+00');
INSERT INTO public."agentSkill" VALUES (209, 83, '1', 1, '2021-09-22 15:54:55.383205+00', '2021-09-22 15:54:55.383205+00');
INSERT INTO public."agentSkill" VALUES (210, 83, '2', 2, '2021-09-22 15:54:55.383205+00', '2021-09-22 15:54:55.383205+00');
INSERT INTO public."agentSkill" VALUES (211, 83, '3', 3, '2021-09-22 15:54:55.383205+00', '2021-09-22 15:54:55.383205+00');
INSERT INTO public."agentSkill" VALUES (233, 89, '1', 1, '2021-09-22 15:54:55.391693+00', '2021-09-22 15:54:55.391693+00');
INSERT INTO public."agentSkill" VALUES (234, 89, '2', 2, '2021-09-22 15:54:55.391693+00', '2021-09-22 15:54:55.391693+00');
INSERT INTO public."agentSkill" VALUES (235, 89, '3', 3, '2021-09-22 15:54:55.391693+00', '2021-09-22 15:54:55.391693+00');
INSERT INTO public."agentSkill" VALUES (254, 35, '1', 6, '2021-09-22 15:54:55.420638+00', '2021-09-22 15:54:55.420638+00');
INSERT INTO public."agentSkill" VALUES (255, 35, '2', 8, '2021-09-22 15:54:55.420638+00', '2021-09-22 15:54:55.420638+00');
INSERT INTO public."agentSkill" VALUES (256, 35, '3', 4, '2021-09-22 15:54:55.420638+00', '2021-09-22 15:54:55.420638+00');
INSERT INTO public."agentSkill" VALUES (140, 58, '1', 1, '2021-09-22 15:54:55.358763+00', '2021-09-22 15:54:55.358763+00');
INSERT INTO public."agentSkill" VALUES (141, 58, '2', 2, '2021-09-22 15:54:55.358763+00', '2021-09-22 15:54:55.358763+00');
INSERT INTO public."agentSkill" VALUES (142, 58, '3', 3, '2021-09-22 15:54:55.358763+00', '2021-09-22 15:54:55.358763+00');
INSERT INTO public."agentSkill" VALUES (161, 64, '1', 1, '2021-09-22 15:54:55.366908+00', '2021-09-22 15:54:55.366908+00');
INSERT INTO public."agentSkill" VALUES (162, 64, '2', 2, '2021-09-22 15:54:55.366908+00', '2021-09-22 15:54:55.366908+00');
INSERT INTO public."agentSkill" VALUES (163, 64, '3', 3, '2021-09-22 15:54:55.366908+00', '2021-09-22 15:54:55.366908+00');
INSERT INTO public."agentSkill" VALUES (188, 74, '1', 1, '2021-09-22 15:54:55.374729+00', '2021-09-22 15:54:55.374729+00');
INSERT INTO public."agentSkill" VALUES (189, 74, '2', 2, '2021-09-22 15:54:55.374729+00', '2021-09-22 15:54:55.374729+00');
INSERT INTO public."agentSkill" VALUES (190, 74, '3', 3, '2021-09-22 15:54:55.374729+00', '2021-09-22 15:54:55.374729+00');
INSERT INTO public."agentSkill" VALUES (212, 85, '1', 1, '2021-09-22 15:54:55.383868+00', '2021-09-22 15:54:55.383868+00');
INSERT INTO public."agentSkill" VALUES (213, 85, '2', 2, '2021-09-22 15:54:55.383868+00', '2021-09-22 15:54:55.383868+00');
INSERT INTO public."agentSkill" VALUES (214, 85, '3', 3, '2021-09-22 15:54:55.383868+00', '2021-09-22 15:54:55.383868+00');
INSERT INTO public."agentSkill" VALUES (239, 90, '1', 1, '2021-09-22 15:54:55.392114+00', '2021-09-22 15:54:55.392114+00');
INSERT INTO public."agentSkill" VALUES (240, 90, '2', 2, '2021-09-22 15:54:55.392114+00', '2021-09-22 15:54:55.392114+00');
INSERT INTO public."agentSkill" VALUES (241, 90, '3', 3, '2021-09-22 15:54:55.392114+00', '2021-09-22 15:54:55.392114+00');
INSERT INTO public."agentSkill" VALUES (260, 41, '1', 6, '2021-09-22 15:54:55.423315+00', '2021-09-22 15:54:55.423315+00');
INSERT INTO public."agentSkill" VALUES (261, 41, '2', 9, '2021-09-22 15:54:55.423315+00', '2021-09-22 15:54:55.423315+00');
INSERT INTO public."agentSkill" VALUES (262, 41, '3', 7, '2021-09-22 15:54:55.423315+00', '2021-09-22 15:54:55.423315+00');
INSERT INTO public."agentSkill" VALUES (143, 59, '1', 1, '2021-09-22 15:54:55.359302+00', '2021-09-22 15:54:55.359302+00');
INSERT INTO public."agentSkill" VALUES (144, 59, '2', 2, '2021-09-22 15:54:55.359302+00', '2021-09-22 15:54:55.359302+00');
INSERT INTO public."agentSkill" VALUES (145, 59, '3', 3, '2021-09-22 15:54:55.359302+00', '2021-09-22 15:54:55.359302+00');
INSERT INTO public."agentSkill" VALUES (164, 65, '1', 1, '2021-09-22 15:54:55.367167+00', '2021-09-22 15:54:55.367167+00');
INSERT INTO public."agentSkill" VALUES (165, 65, '2', 2, '2021-09-22 15:54:55.367167+00', '2021-09-22 15:54:55.367167+00');
INSERT INTO public."agentSkill" VALUES (166, 65, '3', 3, '2021-09-22 15:54:55.367167+00', '2021-09-22 15:54:55.367167+00');
INSERT INTO public."agentSkill" VALUES (191, 75, '1', 1, '2021-09-22 15:54:55.374979+00', '2021-09-22 15:54:55.374979+00');
INSERT INTO public."agentSkill" VALUES (192, 75, '2', 2, '2021-09-22 15:54:55.374979+00', '2021-09-22 15:54:55.374979+00');
INSERT INTO public."agentSkill" VALUES (193, 75, '3', 3, '2021-09-22 15:54:55.374979+00', '2021-09-22 15:54:55.374979+00');
INSERT INTO public."agentSkill" VALUES (215, 86, '1', 1, '2021-09-22 15:54:55.384092+00', '2021-09-22 15:54:55.384092+00');
INSERT INTO public."agentSkill" VALUES (216, 86, '2', 2, '2021-09-22 15:54:55.384092+00', '2021-09-22 15:54:55.384092+00');
INSERT INTO public."agentSkill" VALUES (217, 86, '3', 3, '2021-09-22 15:54:55.384092+00', '2021-09-22 15:54:55.384092+00');
INSERT INTO public."agentSkill" VALUES (242, 91, '1', 1, '2021-09-22 15:54:55.392319+00', '2021-09-22 15:54:55.392319+00');
INSERT INTO public."agentSkill" VALUES (243, 91, '2', 2, '2021-09-22 15:54:55.392319+00', '2021-09-22 15:54:55.392319+00');
INSERT INTO public."agentSkill" VALUES (244, 91, '3', 4, '2021-09-22 15:54:55.392319+00', '2021-09-22 15:54:55.392319+00');
INSERT INTO public."agentSkill" VALUES (263, 38, '1', 4, '2021-09-22 15:54:55.425053+00', '2021-09-22 15:54:55.425053+00');
INSERT INTO public."agentSkill" VALUES (264, 38, '2', 6, '2021-09-22 15:54:55.425053+00', '2021-09-22 15:54:55.425053+00');
INSERT INTO public."agentSkill" VALUES (265, 38, '3', 5, '2021-09-22 15:54:55.425053+00', '2021-09-22 15:54:55.425053+00');
INSERT INTO public."agentSkill" VALUES (146, 60, '1', 1, '2021-09-22 15:54:55.359577+00', '2021-09-22 15:54:55.359577+00');
INSERT INTO public."agentSkill" VALUES (147, 60, '2', 2, '2021-09-22 15:54:55.359577+00', '2021-09-22 15:54:55.359577+00');
INSERT INTO public."agentSkill" VALUES (148, 60, '3', 3, '2021-09-22 15:54:55.359577+00', '2021-09-22 15:54:55.359577+00');
INSERT INTO public."agentSkill" VALUES (167, 66, '1', 1, '2021-09-22 15:54:55.367411+00', '2021-09-22 15:54:55.367411+00');
INSERT INTO public."agentSkill" VALUES (168, 66, '2', 2, '2021-09-22 15:54:55.367411+00', '2021-09-22 15:54:55.367411+00');
INSERT INTO public."agentSkill" VALUES (169, 66, '3', 3, '2021-09-22 15:54:55.367411+00', '2021-09-22 15:54:55.367411+00');
INSERT INTO public."agentSkill" VALUES (200, 73, '1', 1, '2021-09-22 15:54:55.378081+00', '2021-09-22 15:54:55.378081+00');
INSERT INTO public."agentSkill" VALUES (201, 73, '2', 2, '2021-09-22 15:54:55.378081+00', '2021-09-22 15:54:55.378081+00');
INSERT INTO public."agentSkill" VALUES (202, 73, '3', 3, '2021-09-22 15:54:55.378081+00', '2021-09-22 15:54:55.378081+00');
INSERT INTO public."agentSkill" VALUES (236, 82, '1', 1, '2021-09-22 15:54:55.389259+00', '2021-09-22 15:54:55.389259+00');
INSERT INTO public."agentSkill" VALUES (237, 82, '2', 2, '2021-09-22 15:54:55.389259+00', '2021-09-22 15:54:55.389259+00');
INSERT INTO public."agentSkill" VALUES (238, 82, '3', 3, '2021-09-22 15:54:55.389259+00', '2021-09-22 15:54:55.389259+00');
INSERT INTO public."agentSkill" VALUES (269, 42, '1', 5, '2021-09-22 15:54:55.427603+00', '2021-09-22 15:54:55.427603+00');
INSERT INTO public."agentSkill" VALUES (270, 42, '2', 9, '2021-09-22 15:54:55.427603+00', '2021-09-22 15:54:55.427603+00');
INSERT INTO public."agentSkill" VALUES (271, 42, '3', 7, '2021-09-22 15:54:55.427603+00', '2021-09-22 15:54:55.427603+00');
INSERT INTO public."agentSkill" VALUES (149, 57, '1', 1, '2021-09-22 15:54:55.358603+00', '2021-09-22 15:54:55.358603+00');
INSERT INTO public."agentSkill" VALUES (150, 57, '2', 2, '2021-09-22 15:54:55.358603+00', '2021-09-22 15:54:55.358603+00');
INSERT INTO public."agentSkill" VALUES (151, 57, '3', 3, '2021-09-22 15:54:55.358603+00', '2021-09-22 15:54:55.358603+00');
INSERT INTO public."agentSkill" VALUES (170, 67, '1', 1, '2021-09-22 15:54:55.36998+00', '2021-09-22 15:54:55.36998+00');
INSERT INTO public."agentSkill" VALUES (171, 67, '2', 2, '2021-09-22 15:54:55.36998+00', '2021-09-22 15:54:55.36998+00');
INSERT INTO public."agentSkill" VALUES (172, 67, '3', 3, '2021-09-22 15:54:55.36998+00', '2021-09-22 15:54:55.36998+00');
INSERT INTO public."agentSkill" VALUES (197, 77, '1', 1, '2021-09-22 15:54:55.37745+00', '2021-09-22 15:54:55.37745+00');
INSERT INTO public."agentSkill" VALUES (198, 77, '2', 2, '2021-09-22 15:54:55.37745+00', '2021-09-22 15:54:55.37745+00');
INSERT INTO public."agentSkill" VALUES (199, 77, '3', 3, '2021-09-22 15:54:55.37745+00', '2021-09-22 15:54:55.37745+00');
INSERT INTO public."agentSkill" VALUES (221, 81, '1', 1, '2021-09-22 15:54:55.386442+00', '2021-09-22 15:54:55.386442+00');
INSERT INTO public."agentSkill" VALUES (222, 81, '2', 2, '2021-09-22 15:54:55.386442+00', '2021-09-22 15:54:55.386442+00');
INSERT INTO public."agentSkill" VALUES (223, 81, '3', 3, '2021-09-22 15:54:55.386442+00', '2021-09-22 15:54:55.386442+00');
INSERT INTO public."agentSkill" VALUES (245, 92, '1', 1, '2021-09-22 15:54:55.395022+00', '2021-09-22 15:54:55.395022+00');
INSERT INTO public."agentSkill" VALUES (246, 92, '2', 2, '2021-09-22 15:54:55.395022+00', '2021-09-22 15:54:55.395022+00');
INSERT INTO public."agentSkill" VALUES (247, 92, '3', 3, '2021-09-22 15:54:55.395022+00', '2021-09-22 15:54:55.395022+00');
INSERT INTO public."agentSkill" VALUES (257, 39, '1', 8, '2021-09-22 15:54:55.422646+00', '2021-09-22 15:54:55.422646+00');
INSERT INTO public."agentSkill" VALUES (258, 39, '2', 5, '2021-09-22 15:54:55.422646+00', '2021-09-22 15:54:55.422646+00');
INSERT INTO public."agentSkill" VALUES (259, 39, '3', 9, '2021-09-22 15:54:55.422646+00', '2021-09-22 15:54:55.422646+00');
INSERT INTO public."agentSkill" VALUES (152, 61, '1', 1, '2021-09-22 15:54:55.36029+00', '2021-09-22 15:54:55.36029+00');
INSERT INTO public."agentSkill" VALUES (153, 61, '2', 2, '2021-09-22 15:54:55.36029+00', '2021-09-22 15:54:55.36029+00');
INSERT INTO public."agentSkill" VALUES (154, 61, '3', 3, '2021-09-22 15:54:55.36029+00', '2021-09-22 15:54:55.36029+00');
INSERT INTO public."agentSkill" VALUES (194, 76, '1', 1, '2021-09-22 15:54:55.375875+00', '2021-09-22 15:54:55.375875+00');
INSERT INTO public."agentSkill" VALUES (195, 76, '2', 2, '2021-09-22 15:54:55.375875+00', '2021-09-22 15:54:55.375875+00');
INSERT INTO public."agentSkill" VALUES (196, 76, '3', 3, '2021-09-22 15:54:55.375875+00', '2021-09-22 15:54:55.375875+00');
INSERT INTO public."agentSkill" VALUES (272, 36, '1', 4, '2021-09-22 15:54:55.426902+00', '2021-09-22 15:54:55.426902+00');
INSERT INTO public."agentSkill" VALUES (273, 36, '2', 7, '2021-09-22 15:54:55.426902+00', '2021-09-22 15:54:55.426902+00');
INSERT INTO public."agentSkill" VALUES (274, 36, '3', 5, '2021-09-22 15:54:55.426902+00', '2021-09-22 15:54:55.426902+00');
INSERT INTO public."agentSkill" VALUES (155, 62, '1', 1, '2021-09-22 15:54:55.363286+00', '2021-09-22 15:54:55.363286+00');
INSERT INTO public."agentSkill" VALUES (156, 62, '2', 2, '2021-09-22 15:54:55.363286+00', '2021-09-22 15:54:55.363286+00');
INSERT INTO public."agentSkill" VALUES (157, 62, '3', 3, '2021-09-22 15:54:55.363286+00', '2021-09-22 15:54:55.363286+00');
INSERT INTO public."agentSkill" VALUES (179, 69, '1', 1, '2021-09-22 15:54:55.370875+00', '2021-09-22 15:54:55.370875+00');
INSERT INTO public."agentSkill" VALUES (180, 69, '2', 2, '2021-09-22 15:54:55.370875+00', '2021-09-22 15:54:55.370875+00');
INSERT INTO public."agentSkill" VALUES (181, 69, '3', 3, '2021-09-22 15:54:55.370875+00', '2021-09-22 15:54:55.370875+00');
INSERT INTO public."agentSkill" VALUES (203, 78, '1', 1, '2021-09-22 15:54:55.378683+00', '2021-09-22 15:54:55.378683+00');
INSERT INTO public."agentSkill" VALUES (204, 78, '2', 2, '2021-09-22 15:54:55.378683+00', '2021-09-22 15:54:55.378683+00');
INSERT INTO public."agentSkill" VALUES (205, 78, '3', 3, '2021-09-22 15:54:55.378683+00', '2021-09-22 15:54:55.378683+00');
INSERT INTO public."agentSkill" VALUES (227, 88, '1', 1, '2021-09-22 15:54:55.387834+00', '2021-09-22 15:54:55.387834+00');
INSERT INTO public."agentSkill" VALUES (228, 88, '2', 2, '2021-09-22 15:54:55.387834+00', '2021-09-22 15:54:55.387834+00');
INSERT INTO public."agentSkill" VALUES (229, 88, '3', 3, '2021-09-22 15:54:55.387834+00', '2021-09-22 15:54:55.387834+00');
INSERT INTO public."agentSkill" VALUES (251, 34, '1', 5, '2021-09-22 15:54:55.420392+00', '2021-09-22 15:54:55.420392+00');
INSERT INTO public."agentSkill" VALUES (252, 34, '2', 3, '2021-09-22 15:54:55.420392+00', '2021-09-22 15:54:55.420392+00');
INSERT INTO public."agentSkill" VALUES (253, 34, '3', 5, '2021-09-22 15:54:55.420392+00', '2021-09-22 15:54:55.420392+00');
INSERT INTO public."agentSkill" VALUES (158, 63, '1', 1, '2021-09-22 15:54:55.363554+00', '2021-09-22 15:54:55.363554+00');
INSERT INTO public."agentSkill" VALUES (159, 63, '2', 2, '2021-09-22 15:54:55.363554+00', '2021-09-22 15:54:55.363554+00');
INSERT INTO public."agentSkill" VALUES (160, 63, '3', 3, '2021-09-22 15:54:55.363554+00', '2021-09-22 15:54:55.363554+00');
INSERT INTO public."agentSkill" VALUES (182, 71, '1', 1, '2021-09-22 15:54:55.371147+00', '2021-09-22 15:54:55.371147+00');
INSERT INTO public."agentSkill" VALUES (183, 71, '2', 2, '2021-09-22 15:54:55.371147+00', '2021-09-22 15:54:55.371147+00');
INSERT INTO public."agentSkill" VALUES (184, 71, '3', 3, '2021-09-22 15:54:55.371147+00', '2021-09-22 15:54:55.371147+00');
INSERT INTO public."agentSkill" VALUES (206, 79, '1', 1, '2021-09-22 15:54:55.378947+00', '2021-09-22 15:54:55.378947+00');
INSERT INTO public."agentSkill" VALUES (207, 79, '2', 2, '2021-09-22 15:54:55.378947+00', '2021-09-22 15:54:55.378947+00');
INSERT INTO public."agentSkill" VALUES (208, 79, '3', 3, '2021-09-22 15:54:55.378947+00', '2021-09-22 15:54:55.378947+00');
INSERT INTO public."agentSkill" VALUES (230, 87, '1', 1, '2021-09-22 15:54:55.388046+00', '2021-09-22 15:54:55.388046+00');
INSERT INTO public."agentSkill" VALUES (231, 87, '2', 2, '2021-09-22 15:54:55.388046+00', '2021-09-22 15:54:55.388046+00');
INSERT INTO public."agentSkill" VALUES (232, 87, '3', 3, '2021-09-22 15:54:55.388046+00', '2021-09-22 15:54:55.388046+00');
INSERT INTO public."agentSkill" VALUES (248, 37, '1', 5, '2021-09-22 15:54:55.419372+00', '2021-09-22 15:54:55.419372+00');
INSERT INTO public."agentSkill" VALUES (249, 37, '2', 3, '2021-09-22 15:54:55.419372+00', '2021-09-22 15:54:55.419372+00');
INSERT INTO public."agentSkill" VALUES (250, 37, '3', 6, '2021-09-22 15:54:55.419372+00', '2021-09-22 15:54:55.419372+00');
INSERT INTO public."agentSkill" VALUES (173, 70, '1', 1, '2021-09-22 15:54:55.370102+00', '2021-09-22 15:54:55.370102+00');
INSERT INTO public."agentSkill" VALUES (174, 70, '2', 2, '2021-09-22 15:54:55.370102+00', '2021-09-22 15:54:55.370102+00');
INSERT INTO public."agentSkill" VALUES (175, 70, '3', 3, '2021-09-22 15:54:55.370102+00', '2021-09-22 15:54:55.370102+00');
INSERT INTO public."agentSkill" VALUES (218, 84, '1', 1, '2021-09-22 15:54:55.383682+00', '2021-09-22 15:54:55.383682+00');
INSERT INTO public."agentSkill" VALUES (219, 84, '2', 2, '2021-09-22 15:54:55.383682+00', '2021-09-22 15:54:55.383682+00');
INSERT INTO public."agentSkill" VALUES (220, 84, '3', 3, '2021-09-22 15:54:55.383682+00', '2021-09-22 15:54:55.383682+00');
INSERT INTO public."agentSkill" VALUES (266, 33, '1', 2, '2021-09-22 15:54:55.425377+00', '2021-09-22 15:54:55.425377+00');
INSERT INTO public."agentSkill" VALUES (267, 33, '2', 5, '2021-09-22 15:54:55.425377+00', '2021-09-22 15:54:55.425377+00');
INSERT INTO public."agentSkill" VALUES (268, 33, '3', 6, '2021-09-22 15:54:55.425377+00', '2021-09-22 15:54:55.425377+00');
INSERT INTO public."agentSkill" VALUES (176, 72, '1', 1, '2021-09-22 15:54:55.370224+00', '2021-09-22 15:54:55.370224+00');
INSERT INTO public."agentSkill" VALUES (177, 72, '2', 2, '2021-09-22 15:54:55.370224+00', '2021-09-22 15:54:55.370224+00');
INSERT INTO public."agentSkill" VALUES (178, 72, '3', 3, '2021-09-22 15:54:55.370224+00', '2021-09-22 15:54:55.370224+00');
INSERT INTO public."agentSkill" VALUES (224, 80, '1', 1, '2021-09-22 15:54:55.385197+00', '2021-09-22 15:54:55.385197+00');
INSERT INTO public."agentSkill" VALUES (225, 80, '2', 2, '2021-09-22 15:54:55.385197+00', '2021-09-22 15:54:55.385197+00');
INSERT INTO public."agentSkill" VALUES (226, 80, '3', 3, '2021-09-22 15:54:55.385197+00', '2021-09-22 15:54:55.385197+00');
INSERT INTO public."agentSkill" VALUES (275, 40, '1', 8, '2021-09-22 15:54:55.429496+00', '2021-09-22 15:54:55.429496+00');
INSERT INTO public."agentSkill" VALUES (276, 40, '2', 7, '2021-09-22 15:54:55.429496+00', '2021-09-22 15:54:55.429496+00');
INSERT INTO public."agentSkill" VALUES (277, 40, '3', 4, '2021-09-22 15:54:55.429496+00', '2021-09-22 15:54:55.429496+00');
INSERT INTO public."agentSkill" VALUES (278, 93, '1', 4, '2021-09-23 00:54:34.423456+00', '2021-09-23 00:54:34.423456+00');
INSERT INTO public."agentSkill" VALUES (279, 93, '2', 9, '2021-09-23 00:54:34.423456+00', '2021-09-23 00:54:34.423456+00');
INSERT INTO public."agentSkill" VALUES (280, 93, '3', 7, '2021-09-23 00:54:34.423456+00', '2021-09-23 00:54:34.423456+00');
INSERT INTO public."agentSkill" VALUES (281, 99, '1', 1, '2021-09-23 00:54:34.426585+00', '2021-09-23 00:54:34.426585+00');
INSERT INTO public."agentSkill" VALUES (282, 99, '2', 2, '2021-09-23 00:54:34.426585+00', '2021-09-23 00:54:34.426585+00');
INSERT INTO public."agentSkill" VALUES (283, 99, '3', 3, '2021-09-23 00:54:34.426585+00', '2021-09-23 00:54:34.426585+00');
INSERT INTO public."agentSkill" VALUES (284, 97, '1', 1, '2021-09-23 00:54:34.426875+00', '2021-09-23 00:54:34.426875+00');
INSERT INTO public."agentSkill" VALUES (285, 97, '2', 2, '2021-09-23 00:54:34.426875+00', '2021-09-23 00:54:34.426875+00');
INSERT INTO public."agentSkill" VALUES (286, 97, '3', 3, '2021-09-23 00:54:34.426875+00', '2021-09-23 00:54:34.426875+00');
INSERT INTO public."agentSkill" VALUES (287, 96, '1', 1, '2021-09-23 00:54:34.427276+00', '2021-09-23 00:54:34.427276+00');
INSERT INTO public."agentSkill" VALUES (288, 96, '2', 2, '2021-09-23 00:54:34.427276+00', '2021-09-23 00:54:34.427276+00');
INSERT INTO public."agentSkill" VALUES (289, 96, '3', 3, '2021-09-23 00:54:34.427276+00', '2021-09-23 00:54:34.427276+00');
INSERT INTO public."agentSkill" VALUES (290, 95, '1', 1, '2021-09-23 00:54:34.427991+00', '2021-09-23 00:54:34.427991+00');
INSERT INTO public."agentSkill" VALUES (291, 95, '2', 2, '2021-09-23 00:54:34.427991+00', '2021-09-23 00:54:34.427991+00');
INSERT INTO public."agentSkill" VALUES (292, 95, '3', 3, '2021-09-23 00:54:34.427991+00', '2021-09-23 00:54:34.427991+00');
INSERT INTO public."agentSkill" VALUES (293, 98, '1', 1, '2021-09-23 00:54:34.431269+00', '2021-09-23 00:54:34.431269+00');
INSERT INTO public."agentSkill" VALUES (294, 98, '2', 2, '2021-09-23 00:54:34.431269+00', '2021-09-23 00:54:34.431269+00');
INSERT INTO public."agentSkill" VALUES (295, 98, '3', 3, '2021-09-23 00:54:34.431269+00', '2021-09-23 00:54:34.431269+00');
INSERT INTO public."agentSkill" VALUES (296, 94, '1', 1, '2021-09-23 00:54:34.430612+00', '2021-09-23 00:54:34.430612+00');
INSERT INTO public."agentSkill" VALUES (297, 94, '2', 2, '2021-09-23 00:54:34.430612+00', '2021-09-23 00:54:34.430612+00');
INSERT INTO public."agentSkill" VALUES (298, 94, '3', 3, '2021-09-23 00:54:34.430612+00', '2021-09-23 00:54:34.430612+00');
INSERT INTO public."agentSkill" VALUES (299, 100, '1', 1, '2021-09-23 00:54:34.432527+00', '2021-09-23 00:54:34.432527+00');
INSERT INTO public."agentSkill" VALUES (300, 100, '2', 2, '2021-09-23 00:54:34.432527+00', '2021-09-23 00:54:34.432527+00');
INSERT INTO public."agentSkill" VALUES (301, 100, '3', 3, '2021-09-23 00:54:34.432527+00', '2021-09-23 00:54:34.432527+00');
INSERT INTO public."agentSkill" VALUES (302, 101, '1', 1, '2021-09-23 00:54:34.434931+00', '2021-09-23 00:54:34.434931+00');
INSERT INTO public."agentSkill" VALUES (303, 101, '2', 2, '2021-09-23 00:54:34.434931+00', '2021-09-23 00:54:34.434931+00');
INSERT INTO public."agentSkill" VALUES (304, 101, '3', 3, '2021-09-23 00:54:34.434931+00', '2021-09-23 00:54:34.434931+00');
INSERT INTO public."agentSkill" VALUES (305, 102, '1', 1, '2021-09-23 00:54:34.435036+00', '2021-09-23 00:54:34.435036+00');
INSERT INTO public."agentSkill" VALUES (306, 102, '2', 2, '2021-09-23 00:54:34.435036+00', '2021-09-23 00:54:34.435036+00');
INSERT INTO public."agentSkill" VALUES (307, 102, '3', 3, '2021-09-23 00:54:34.435036+00', '2021-09-23 00:54:34.435036+00');
INSERT INTO public."agentSkill" VALUES (308, 103, '1', 1, '2021-09-23 00:54:34.435156+00', '2021-09-23 00:54:34.435156+00');
INSERT INTO public."agentSkill" VALUES (309, 103, '2', 2, '2021-09-23 00:54:34.435156+00', '2021-09-23 00:54:34.435156+00');
INSERT INTO public."agentSkill" VALUES (310, 103, '3', 3, '2021-09-23 00:54:34.435156+00', '2021-09-23 00:54:34.435156+00');
INSERT INTO public."agentSkill" VALUES (311, 104, '1', 1, '2021-09-23 00:54:34.437471+00', '2021-09-23 00:54:34.437471+00');
INSERT INTO public."agentSkill" VALUES (312, 104, '2', 2, '2021-09-23 00:54:34.437471+00', '2021-09-23 00:54:34.437471+00');
INSERT INTO public."agentSkill" VALUES (313, 104, '3', 3, '2021-09-23 00:54:34.437471+00', '2021-09-23 00:54:34.437471+00');
INSERT INTO public."agentSkill" VALUES (314, 107, '1', 1, '2021-09-23 00:54:34.439877+00', '2021-09-23 00:54:34.439877+00');
INSERT INTO public."agentSkill" VALUES (315, 107, '2', 2, '2021-09-23 00:54:34.439877+00', '2021-09-23 00:54:34.439877+00');
INSERT INTO public."agentSkill" VALUES (316, 107, '3', 3, '2021-09-23 00:54:34.439877+00', '2021-09-23 00:54:34.439877+00');
INSERT INTO public."agentSkill" VALUES (317, 105, '1', 1, '2021-09-23 00:54:34.439997+00', '2021-09-23 00:54:34.439997+00');
INSERT INTO public."agentSkill" VALUES (318, 105, '2', 2, '2021-09-23 00:54:34.439997+00', '2021-09-23 00:54:34.439997+00');
INSERT INTO public."agentSkill" VALUES (319, 105, '3', 3, '2021-09-23 00:54:34.439997+00', '2021-09-23 00:54:34.439997+00');
INSERT INTO public."agentSkill" VALUES (320, 108, '1', 1, '2021-09-23 00:54:34.443174+00', '2021-09-23 00:54:34.443174+00');
INSERT INTO public."agentSkill" VALUES (321, 108, '2', 2, '2021-09-23 00:54:34.443174+00', '2021-09-23 00:54:34.443174+00');
INSERT INTO public."agentSkill" VALUES (322, 108, '3', 3, '2021-09-23 00:54:34.443174+00', '2021-09-23 00:54:34.443174+00');
INSERT INTO public."agentSkill" VALUES (323, 111, '1', 1, '2021-09-23 00:54:34.443335+00', '2021-09-23 00:54:34.443335+00');
INSERT INTO public."agentSkill" VALUES (324, 111, '2', 2, '2021-09-23 00:54:34.443335+00', '2021-09-23 00:54:34.443335+00');
INSERT INTO public."agentSkill" VALUES (325, 111, '3', 3, '2021-09-23 00:54:34.443335+00', '2021-09-23 00:54:34.443335+00');
INSERT INTO public."agentSkill" VALUES (326, 106, '1', 1, '2021-09-23 00:54:34.443449+00', '2021-09-23 00:54:34.443449+00');
INSERT INTO public."agentSkill" VALUES (327, 106, '2', 2, '2021-09-23 00:54:34.443449+00', '2021-09-23 00:54:34.443449+00');
INSERT INTO public."agentSkill" VALUES (328, 106, '3', 3, '2021-09-23 00:54:34.443449+00', '2021-09-23 00:54:34.443449+00');
INSERT INTO public."agentSkill" VALUES (329, 112, '1', 1, '2021-09-23 00:54:34.443563+00', '2021-09-23 00:54:34.443563+00');
INSERT INTO public."agentSkill" VALUES (330, 112, '2', 2, '2021-09-23 00:54:34.443563+00', '2021-09-23 00:54:34.443563+00');
INSERT INTO public."agentSkill" VALUES (331, 112, '3', 3, '2021-09-23 00:54:34.443563+00', '2021-09-23 00:54:34.443563+00');
INSERT INTO public."agentSkill" VALUES (332, 109, '1', 1, '2021-09-23 00:54:34.442662+00', '2021-09-23 00:54:34.442662+00');
INSERT INTO public."agentSkill" VALUES (333, 109, '2', 2, '2021-09-23 00:54:34.442662+00', '2021-09-23 00:54:34.442662+00');
INSERT INTO public."agentSkill" VALUES (334, 109, '3', 3, '2021-09-23 00:54:34.442662+00', '2021-09-23 00:54:34.442662+00');
INSERT INTO public."agentSkill" VALUES (335, 110, '1', 1, '2021-09-23 00:54:34.444188+00', '2021-09-23 00:54:34.444188+00');
INSERT INTO public."agentSkill" VALUES (336, 110, '2', 2, '2021-09-23 00:54:34.444188+00', '2021-09-23 00:54:34.444188+00');
INSERT INTO public."agentSkill" VALUES (337, 110, '3', 3, '2021-09-23 00:54:34.444188+00', '2021-09-23 00:54:34.444188+00');
INSERT INTO public."agentSkill" VALUES (338, 115, '1', 1, '2021-09-23 00:54:34.447061+00', '2021-09-23 00:54:34.447061+00');
INSERT INTO public."agentSkill" VALUES (339, 115, '2', 2, '2021-09-23 00:54:34.447061+00', '2021-09-23 00:54:34.447061+00');
INSERT INTO public."agentSkill" VALUES (340, 115, '3', 3, '2021-09-23 00:54:34.447061+00', '2021-09-23 00:54:34.447061+00');
INSERT INTO public."agentSkill" VALUES (341, 113, '1', 1, '2021-09-23 00:54:34.449821+00', '2021-09-23 00:54:34.449821+00');
INSERT INTO public."agentSkill" VALUES (342, 113, '2', 2, '2021-09-23 00:54:34.449821+00', '2021-09-23 00:54:34.449821+00');
INSERT INTO public."agentSkill" VALUES (343, 113, '3', 3, '2021-09-23 00:54:34.449821+00', '2021-09-23 00:54:34.449821+00');
INSERT INTO public."agentSkill" VALUES (344, 116, '1', 1, '2021-09-23 00:54:34.45055+00', '2021-09-23 00:54:34.45055+00');
INSERT INTO public."agentSkill" VALUES (345, 116, '2', 2, '2021-09-23 00:54:34.45055+00', '2021-09-23 00:54:34.45055+00');
INSERT INTO public."agentSkill" VALUES (346, 116, '3', 3, '2021-09-23 00:54:34.45055+00', '2021-09-23 00:54:34.45055+00');
INSERT INTO public."agentSkill" VALUES (347, 117, '1', 1, '2021-09-23 00:54:34.450772+00', '2021-09-23 00:54:34.450772+00');
INSERT INTO public."agentSkill" VALUES (348, 117, '2', 2, '2021-09-23 00:54:34.450772+00', '2021-09-23 00:54:34.450772+00');
INSERT INTO public."agentSkill" VALUES (349, 117, '3', 3, '2021-09-23 00:54:34.450772+00', '2021-09-23 00:54:34.450772+00');
INSERT INTO public."agentSkill" VALUES (350, 118, '1', 1, '2021-09-23 00:54:34.451184+00', '2021-09-23 00:54:34.451184+00');
INSERT INTO public."agentSkill" VALUES (351, 118, '2', 2, '2021-09-23 00:54:34.451184+00', '2021-09-23 00:54:34.451184+00');
INSERT INTO public."agentSkill" VALUES (352, 118, '3', 3, '2021-09-23 00:54:34.451184+00', '2021-09-23 00:54:34.451184+00');
INSERT INTO public."agentSkill" VALUES (353, 119, '1', 1, '2021-09-23 00:54:34.452079+00', '2021-09-23 00:54:34.452079+00');
INSERT INTO public."agentSkill" VALUES (354, 119, '2', 2, '2021-09-23 00:54:34.452079+00', '2021-09-23 00:54:34.452079+00');
INSERT INTO public."agentSkill" VALUES (355, 119, '3', 3, '2021-09-23 00:54:34.452079+00', '2021-09-23 00:54:34.452079+00');
INSERT INTO public."agentSkill" VALUES (356, 121, '1', 1, '2021-09-23 00:54:34.454801+00', '2021-09-23 00:54:34.454801+00');
INSERT INTO public."agentSkill" VALUES (357, 121, '2', 2, '2021-09-23 00:54:34.454801+00', '2021-09-23 00:54:34.454801+00');
INSERT INTO public."agentSkill" VALUES (358, 121, '3', 3, '2021-09-23 00:54:34.454801+00', '2021-09-23 00:54:34.454801+00');
INSERT INTO public."agentSkill" VALUES (359, 120, '1', 1, '2021-09-23 00:54:34.456825+00', '2021-09-23 00:54:34.456825+00');
INSERT INTO public."agentSkill" VALUES (360, 120, '2', 2, '2021-09-23 00:54:34.456825+00', '2021-09-23 00:54:34.456825+00');
INSERT INTO public."agentSkill" VALUES (361, 120, '3', 3, '2021-09-23 00:54:34.456825+00', '2021-09-23 00:54:34.456825+00');
INSERT INTO public."agentSkill" VALUES (362, 122, '1', 1, '2021-09-23 00:54:34.456941+00', '2021-09-23 00:54:34.456941+00');
INSERT INTO public."agentSkill" VALUES (363, 122, '2', 2, '2021-09-23 00:54:34.456941+00', '2021-09-23 00:54:34.456941+00');
INSERT INTO public."agentSkill" VALUES (364, 122, '3', 3, '2021-09-23 00:54:34.456941+00', '2021-09-23 00:54:34.456941+00');
INSERT INTO public."agentSkill" VALUES (365, 114, '1', 1, '2021-09-23 00:54:34.455951+00', '2021-09-23 00:54:34.455951+00');
INSERT INTO public."agentSkill" VALUES (366, 114, '2', 2, '2021-09-23 00:54:34.455951+00', '2021-09-23 00:54:34.455951+00');
INSERT INTO public."agentSkill" VALUES (367, 114, '3', 3, '2021-09-23 00:54:34.455951+00', '2021-09-23 00:54:34.455951+00');
INSERT INTO public."agentSkill" VALUES (368, 125, '1', 1, '2021-09-23 00:54:34.458202+00', '2021-09-23 00:54:34.458202+00');
INSERT INTO public."agentSkill" VALUES (369, 125, '2', 2, '2021-09-23 00:54:34.458202+00', '2021-09-23 00:54:34.458202+00');
INSERT INTO public."agentSkill" VALUES (370, 125, '3', 3, '2021-09-23 00:54:34.458202+00', '2021-09-23 00:54:34.458202+00');
INSERT INTO public."agentSkill" VALUES (371, 126, '1', 1, '2021-09-23 00:54:34.458328+00', '2021-09-23 00:54:34.458328+00');
INSERT INTO public."agentSkill" VALUES (372, 126, '2', 2, '2021-09-23 00:54:34.458328+00', '2021-09-23 00:54:34.458328+00');
INSERT INTO public."agentSkill" VALUES (373, 126, '3', 3, '2021-09-23 00:54:34.458328+00', '2021-09-23 00:54:34.458328+00');
INSERT INTO public."agentSkill" VALUES (374, 127, '1', 1, '2021-09-23 00:54:34.458467+00', '2021-09-23 00:54:34.458467+00');
INSERT INTO public."agentSkill" VALUES (375, 127, '2', 2, '2021-09-23 00:54:34.458467+00', '2021-09-23 00:54:34.458467+00');
INSERT INTO public."agentSkill" VALUES (376, 127, '3', 3, '2021-09-23 00:54:34.458467+00', '2021-09-23 00:54:34.458467+00');
INSERT INTO public."agentSkill" VALUES (377, 124, '1', 1, '2021-09-23 00:54:34.459196+00', '2021-09-23 00:54:34.459196+00');
INSERT INTO public."agentSkill" VALUES (378, 124, '2', 2, '2021-09-23 00:54:34.459196+00', '2021-09-23 00:54:34.459196+00');
INSERT INTO public."agentSkill" VALUES (379, 124, '3', 3, '2021-09-23 00:54:34.459196+00', '2021-09-23 00:54:34.459196+00');
INSERT INTO public."agentSkill" VALUES (380, 129, '1', 1, '2021-09-23 00:54:34.459768+00', '2021-09-23 00:54:34.459768+00');
INSERT INTO public."agentSkill" VALUES (381, 129, '2', 2, '2021-09-23 00:54:34.459768+00', '2021-09-23 00:54:34.459768+00');
INSERT INTO public."agentSkill" VALUES (382, 129, '3', 3, '2021-09-23 00:54:34.459768+00', '2021-09-23 00:54:34.459768+00');
INSERT INTO public."agentSkill" VALUES (383, 128, '1', 1, '2021-09-23 00:54:34.459626+00', '2021-09-23 00:54:34.459626+00');
INSERT INTO public."agentSkill" VALUES (384, 128, '2', 2, '2021-09-23 00:54:34.459626+00', '2021-09-23 00:54:34.459626+00');
INSERT INTO public."agentSkill" VALUES (385, 128, '3', 3, '2021-09-23 00:54:34.459626+00', '2021-09-23 00:54:34.459626+00');
INSERT INTO public."agentSkill" VALUES (386, 130, '1', 1, '2021-09-23 00:54:34.463817+00', '2021-09-23 00:54:34.463817+00');
INSERT INTO public."agentSkill" VALUES (387, 130, '2', 2, '2021-09-23 00:54:34.463817+00', '2021-09-23 00:54:34.463817+00');
INSERT INTO public."agentSkill" VALUES (388, 130, '3', 3, '2021-09-23 00:54:34.463817+00', '2021-09-23 00:54:34.463817+00');
INSERT INTO public."agentSkill" VALUES (389, 123, '1', 1, '2021-09-23 00:54:34.463942+00', '2021-09-23 00:54:34.463942+00');
INSERT INTO public."agentSkill" VALUES (390, 123, '2', 2, '2021-09-23 00:54:34.463942+00', '2021-09-23 00:54:34.463942+00');
INSERT INTO public."agentSkill" VALUES (391, 123, '3', 3, '2021-09-23 00:54:34.463942+00', '2021-09-23 00:54:34.463942+00');
INSERT INTO public."agentSkill" VALUES (392, 133, '1', 1, '2021-09-23 00:54:34.46408+00', '2021-09-23 00:54:34.46408+00');
INSERT INTO public."agentSkill" VALUES (393, 133, '2', 2, '2021-09-23 00:54:34.46408+00', '2021-09-23 00:54:34.46408+00');
INSERT INTO public."agentSkill" VALUES (394, 133, '3', 3, '2021-09-23 00:54:34.46408+00', '2021-09-23 00:54:34.46408+00');
INSERT INTO public."agentSkill" VALUES (395, 134, '1', 1, '2021-09-23 00:54:34.464615+00', '2021-09-23 00:54:34.464615+00');
INSERT INTO public."agentSkill" VALUES (396, 134, '2', 2, '2021-09-23 00:54:34.464615+00', '2021-09-23 00:54:34.464615+00');
INSERT INTO public."agentSkill" VALUES (397, 134, '3', 3, '2021-09-23 00:54:34.464615+00', '2021-09-23 00:54:34.464615+00');
INSERT INTO public."agentSkill" VALUES (398, 135, '1', 1, '2021-09-23 00:54:34.464755+00', '2021-09-23 00:54:34.464755+00');
INSERT INTO public."agentSkill" VALUES (399, 135, '2', 2, '2021-09-23 00:54:34.464755+00', '2021-09-23 00:54:34.464755+00');
INSERT INTO public."agentSkill" VALUES (400, 135, '3', 3, '2021-09-23 00:54:34.464755+00', '2021-09-23 00:54:34.464755+00');
INSERT INTO public."agentSkill" VALUES (401, 132, '1', 1, '2021-09-23 00:54:34.464848+00', '2021-09-23 00:54:34.464848+00');
INSERT INTO public."agentSkill" VALUES (402, 132, '2', 2, '2021-09-23 00:54:34.464848+00', '2021-09-23 00:54:34.464848+00');
INSERT INTO public."agentSkill" VALUES (403, 132, '3', 3, '2021-09-23 00:54:34.464848+00', '2021-09-23 00:54:34.464848+00');
INSERT INTO public."agentSkill" VALUES (404, 137, '1', 1, '2021-09-23 00:54:34.466362+00', '2021-09-23 00:54:34.466362+00');
INSERT INTO public."agentSkill" VALUES (405, 137, '2', 2, '2021-09-23 00:54:34.466362+00', '2021-09-23 00:54:34.466362+00');
INSERT INTO public."agentSkill" VALUES (406, 137, '3', 3, '2021-09-23 00:54:34.466362+00', '2021-09-23 00:54:34.466362+00');
INSERT INTO public."agentSkill" VALUES (407, 139, '1', 1, '2021-09-23 00:54:34.47174+00', '2021-09-23 00:54:34.47174+00');
INSERT INTO public."agentSkill" VALUES (408, 139, '2', 2, '2021-09-23 00:54:34.47174+00', '2021-09-23 00:54:34.47174+00');
INSERT INTO public."agentSkill" VALUES (409, 139, '3', 3, '2021-09-23 00:54:34.47174+00', '2021-09-23 00:54:34.47174+00');
INSERT INTO public."agentSkill" VALUES (410, 131, '1', 1, '2021-09-23 00:54:34.470565+00', '2021-09-23 00:54:34.470565+00');
INSERT INTO public."agentSkill" VALUES (411, 131, '2', 2, '2021-09-23 00:54:34.470565+00', '2021-09-23 00:54:34.470565+00');
INSERT INTO public."agentSkill" VALUES (412, 131, '3', 3, '2021-09-23 00:54:34.470565+00', '2021-09-23 00:54:34.470565+00');
INSERT INTO public."agentSkill" VALUES (413, 138, '1', 1, '2021-09-23 00:54:34.47231+00', '2021-09-23 00:54:34.47231+00');
INSERT INTO public."agentSkill" VALUES (414, 138, '2', 2, '2021-09-23 00:54:34.47231+00', '2021-09-23 00:54:34.47231+00');
INSERT INTO public."agentSkill" VALUES (415, 138, '3', 3, '2021-09-23 00:54:34.47231+00', '2021-09-23 00:54:34.47231+00');
INSERT INTO public."agentSkill" VALUES (416, 140, '1', 1, '2021-09-23 00:54:34.472432+00', '2021-09-23 00:54:34.472432+00');
INSERT INTO public."agentSkill" VALUES (417, 140, '2', 2, '2021-09-23 00:54:34.472432+00', '2021-09-23 00:54:34.472432+00');
INSERT INTO public."agentSkill" VALUES (418, 140, '3', 3, '2021-09-23 00:54:34.472432+00', '2021-09-23 00:54:34.472432+00');
INSERT INTO public."agentSkill" VALUES (419, 141, '1', 1, '2021-09-23 00:54:34.47314+00', '2021-09-23 00:54:34.47314+00');
INSERT INTO public."agentSkill" VALUES (420, 141, '2', 2, '2021-09-23 00:54:34.47314+00', '2021-09-23 00:54:34.47314+00');
INSERT INTO public."agentSkill" VALUES (421, 141, '3', 3, '2021-09-23 00:54:34.47314+00', '2021-09-23 00:54:34.47314+00');
INSERT INTO public."agentSkill" VALUES (422, 136, '1', 1, '2021-09-23 00:54:34.471855+00', '2021-09-23 00:54:34.471855+00');
INSERT INTO public."agentSkill" VALUES (423, 136, '2', 2, '2021-09-23 00:54:34.471855+00', '2021-09-23 00:54:34.471855+00');
INSERT INTO public."agentSkill" VALUES (424, 136, '3', 3, '2021-09-23 00:54:34.471855+00', '2021-09-23 00:54:34.471855+00');
INSERT INTO public."agentSkill" VALUES (425, 142, '1', 1, '2021-09-23 00:54:34.473259+00', '2021-09-23 00:54:34.473259+00');
INSERT INTO public."agentSkill" VALUES (426, 142, '2', 2, '2021-09-23 00:54:34.473259+00', '2021-09-23 00:54:34.473259+00');
INSERT INTO public."agentSkill" VALUES (427, 142, '3', 4, '2021-09-23 00:54:34.473259+00', '2021-09-23 00:54:34.473259+00');


--
-- TOC entry 3250 (class 0 OID 69687)
-- Dependencies: 223
-- Data for Name: agentTeam; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."agentTeam" VALUES (6, 38, 5, '2021-09-21 20:17:00.0281+00', '2021-09-21 20:17:00.0281+00');
INSERT INTO public."agentTeam" VALUES (3, 36, 4, '2021-09-21 15:53:04.637432+00', '2021-09-21 15:53:04.637432+00');
INSERT INTO public."agentTeam" VALUES (1, 34, 4, '2021-09-21 14:53:25.824615+00', '2021-09-21 14:53:25.824615+00');
INSERT INTO public."agentTeam" VALUES (5, 36, 5, '2021-09-21 16:20:18.399056+00', '2021-09-21 16:20:18.399056+00');


--
-- TOC entry 3268 (class 0 OID 69831)
-- Dependencies: 241
-- Data for Name: agent_adherence_history; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.agent_adherence_history VALUES (1, 1001, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-21 18:31:42+00', '2021-09-21 18:31:46+00', false, 0, 0, '2021-09-21 18:31:46.469657+00', '2021-09-21 18:31:46.469657+00');
INSERT INTO public.agent_adherence_history VALUES (2, 1001, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-21 18:31:46+00', '2021-09-21 18:34:23+00', false, 0, 0, '2021-09-21 18:34:23.754166+00', '2021-09-21 18:34:23.754166+00');
INSERT INTO public.agent_adherence_history VALUES (3, 2, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-21 20:32:09+00', '2021-09-21 20:33:23+00', false, 0, 0, '2021-09-21 20:33:23.307055+00', '2021-09-21 20:33:23.307055+00');
INSERT INTO public.agent_adherence_history VALUES (4, 2, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-21 20:58:59+00', '2021-09-21 21:01:19+00', false, 0, 0, '2021-09-21 21:01:19.761476+00', '2021-09-21 21:01:19.761476+00');
INSERT INTO public.agent_adherence_history VALUES (5, 500004, 'Service', '2021-09-21 00:00:00+00', 1320, 1410, 'Service', '2021-09-21 23:23:36+00', '2021-09-21 23:29:21+00', false, 0, 0, '2021-09-21 23:29:21.285047+00', '2021-09-21 23:29:21.285047+00');
INSERT INTO public.agent_adherence_history VALUES (6, 500004, 'Service', '2021-09-21 00:00:00+00', 1320, 1410, 'Break', '2021-09-21 23:29:21+00', '2021-09-21 23:42:13+00', false, 0, 0, '2021-09-21 23:42:13.013705+00', '2021-09-21 23:42:13.013705+00');
INSERT INTO public.agent_adherence_history VALUES (7, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-21 23:42:12+00', '2021-09-21 23:43:09+00', false, 0, 0, '2021-09-21 23:43:09.58261+00', '2021-09-21 23:43:09.58261+00');
INSERT INTO public.agent_adherence_history VALUES (8, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-21 23:43:09+00', '2021-09-21 23:46:00+00', false, 0, 0, '2021-09-21 23:46:00.117904+00', '2021-09-21 23:46:00.117904+00');
INSERT INTO public.agent_adherence_history VALUES (9, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-21 23:46:00+00', '2021-09-21 23:48:54+00', false, 0, 0, '2021-09-21 23:48:54.199957+00', '2021-09-21 23:48:54.199957+00');
INSERT INTO public.agent_adherence_history VALUES (10, 500004, 'Service', '2021-09-21 00:00:00+00', 1410, 1435, 'Break', '2021-09-21 23:48:54+00', '2021-09-21 23:49:11+00', false, 0, 0, '2021-09-21 23:49:11.336903+00', '2021-09-21 23:49:11.336903+00');
INSERT INTO public.agent_adherence_history VALUES (11, 500004, 'Service', '2021-09-21 00:00:00+00', 1410, 1435, 'Service', '2021-09-21 23:49:11+00', '2021-09-21 23:49:58+00', true, 0, 0, '2021-09-21 23:49:58.341256+00', '2021-09-21 23:49:58.341256+00');
INSERT INTO public.agent_adherence_history VALUES (12, 500004, 'Service', '2021-09-21 00:00:00+00', 1410, 1435, 'Break', '2021-09-21 23:49:58+00', '2021-09-21 23:56:25+00', false, 0, 0, '2021-09-21 23:56:25.859293+00', '2021-09-21 23:56:25.859293+00');
INSERT INTO public.agent_adherence_history VALUES (13, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-21 23:56:25+00', '2021-09-21 23:57:16+00', false, 0, 0, '2021-09-21 23:57:16.563727+00', '2021-09-21 23:57:16.563727+00');
INSERT INTO public.agent_adherence_history VALUES (14, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-21 23:57:16+00', '2021-09-22 00:41:45+00', false, 0, 0, '2021-09-22 00:41:45.189685+00', '2021-09-22 00:41:45.189685+00');
INSERT INTO public.agent_adherence_history VALUES (15, 500005, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 00:45:17+00', '2021-09-22 00:46:21+00', false, 0, 0, '2021-09-22 00:46:21.241562+00', '2021-09-22 00:46:21.241562+00');
INSERT INTO public.agent_adherence_history VALUES (16, 500004, 'Service', '2021-09-22 00:00:00+00', 0, 120, 'Service', '2021-09-22 00:41:45+00', '2021-09-22 11:17:54+00', true, 0, 0, '2021-09-22 11:17:54.032126+00', '2021-09-22 11:17:54.032126+00');
INSERT INTO public.agent_adherence_history VALUES (17, 500005, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-22 00:46:21+00', '2021-09-22 11:21:26+00', false, 0, 0, '2021-09-22 11:21:26.731019+00', '2021-09-22 11:21:26.731019+00');
INSERT INTO public.agent_adherence_history VALUES (18, 500004, 'Service', '2021-09-22 00:00:00+00', 540, 720, 'Break', '2021-09-22 11:17:54+00', '2021-09-22 11:22:38+00', false, 0, 0, '2021-09-22 11:22:38.527255+00', '2021-09-22 11:22:38.527255+00');
INSERT INTO public.agent_adherence_history VALUES (19, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 15:34:11+00', '2021-09-22 15:43:55+00', false, 0, 0, '2021-09-22 15:43:55.681891+00', '2021-09-22 15:43:55.681891+00');
INSERT INTO public.agent_adherence_history VALUES (20, 500004, 'Service', '2021-09-22 00:00:00+00', 540, 720, 'Service', '2021-09-22 11:22:20+00', '2021-09-22 15:48:24+00', true, 0, 0, '2021-09-22 15:48:24.348828+00', '2021-09-22 15:48:24.348828+00');
INSERT INTO public.agent_adherence_history VALUES (21, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 15:43:39+00', '2021-09-22 15:49:33+00', false, 0, 0, '2021-09-22 15:49:33.980192+00', '2021-09-22 15:49:33.980192+00');
INSERT INTO public.agent_adherence_history VALUES (22, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 15:49:33+00', '2021-09-22 16:16:04+00', false, 0, 0, '2021-09-22 16:16:04.555785+00', '2021-09-22 16:16:04.555785+00');
INSERT INTO public.agent_adherence_history VALUES (23, 500003, 'Seg_Break', '2021-09-22 00:00:00+00', 960, 1020, 'Service', '2021-09-22 16:16:04+00', '2021-09-22 16:32:25+00', false, 0, 0, '2021-09-22 16:32:25.402891+00', '2021-09-22 16:32:25.402891+00');
INSERT INTO public.agent_adherence_history VALUES (24, 500003, 'Break', '2021-09-22 00:00:00+00', 960, 1020, 'Service', '2021-09-22 16:32:25+00', '2021-09-22 18:12:32+00', false, 0, 0, '2021-09-22 18:12:32.085366+00', '2021-09-22 18:12:32.085366+00');
INSERT INTO public.agent_adherence_history VALUES (25, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-22 18:12:32+00', '2021-09-22 18:15:50+00', false, 0, 0, '2021-09-22 18:15:50.211145+00', '2021-09-22 18:15:50.211145+00');
INSERT INTO public.agent_adherence_history VALUES (26, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 18:15:50+00', '2021-09-22 18:16:55+00', false, 0, 0, '2021-09-22 18:16:55.336081+00', '2021-09-22 18:16:55.336081+00');
INSERT INTO public.agent_adherence_history VALUES (27, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 18:16:55+00', '2021-09-22 18:18:05+00', false, 0, 0, '2021-09-22 18:18:05.022623+00', '2021-09-22 18:18:05.022623+00');
INSERT INTO public.agent_adherence_history VALUES (28, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-22 18:18:05+00', '2021-09-22 18:47:47+00', false, 0, 0, '2021-09-22 18:47:47.129611+00', '2021-09-22 18:47:47.129611+00');
INSERT INTO public.agent_adherence_history VALUES (29, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 18:47:47+00', '2021-09-22 18:56:04+00', false, 0, 0, '2021-09-22 18:56:04.652544+00', '2021-09-22 18:56:04.652544+00');
INSERT INTO public.agent_adherence_history VALUES (30, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 18:56:04+00', '2021-09-22 18:58:14+00', false, 0, 0, '2021-09-22 18:58:14.113805+00', '2021-09-22 18:58:14.113805+00');
INSERT INTO public.agent_adherence_history VALUES (31, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-22 18:58:14+00', '2021-09-22 19:02:09+00', false, 0, 0, '2021-09-22 19:02:09.074193+00', '2021-09-22 19:02:09.074193+00');
INSERT INTO public.agent_adherence_history VALUES (32, 500003, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 19:02:09+00', '2021-09-22 19:56:13+00', false, 0, 0, '2021-09-22 19:56:13.075093+00', '2021-09-22 19:56:13.075093+00');
INSERT INTO public.agent_adherence_history VALUES (33, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 15:48:24+00', '2021-09-22 19:59:51+00', false, 0, 0, '2021-09-22 19:59:51.851005+00', '2021-09-22 19:59:51.851005+00');
INSERT INTO public.agent_adherence_history VALUES (34, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Service', '2021-09-22 19:59:51+00', '2021-09-22 20:00:59+00', false, 0, 0, '2021-09-22 20:00:59.027953+00', '2021-09-22 20:00:59.027953+00');
INSERT INTO public.agent_adherence_history VALUES (35, 500004, 'Unscheduled', '1970-01-01 00:00:00+00', 0, 0, 'Break', '2021-09-22 20:00:59+00', '2021-09-22 20:05:14+00', false, 0, 0, '2021-09-22 20:05:14.532298+00', '2021-09-22 20:05:14.532298+00');


--
-- TOC entry 3236 (class 0 OID 69192)
-- Dependencies: 209
-- Data for Name: dashboard; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.dashboard VALUES (1, '2021-09-29 20:12:20.109873+00', '2021-09-29 20:12:20.109873+00', 'admin', '{"widgets":[{"id":1,"layout":{"i":"1","x":5,"y":0,"w":1.5,"h":3.5},"configurations":[{"type":"summarycard","aggregateBy":"sum","filterType":"agent","filterValues":["ag2"],"title":"card","columns":[],"chartProps":{"displayLegend":false,"legendPosition":"","displayXAxisTitle":false,"xAxisTitle":"","displayYAxisTitle":false,"yAxisTitle":"","displayValueOnGraph":false},"tableProps":{"pagesize":5}}]}]}');


--
-- TOC entry 3242 (class 0 OID 69572)
-- Dependencies: 215
-- Data for Name: employee_segment; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.employee_segment VALUES (11, 'Service', '500002', '2021-09-12 00:00:00+00', '2', '09:00', '10:00', 'memo', '1', '2021-09-16 19:48:20.810198+00', '2021-09-16 19:48:20.810198+00', 0, 0);
INSERT INTO public.employee_segment VALUES (51, 'Lunch', '500003', '2021-09-22 00:00:00+00', '2', '13:00', '13:30', '', '1', '2021-09-21 22:24:51.451331+00', '2021-09-21 22:24:51.451331+00', 780, 810);
INSERT INTO public.employee_segment VALUES (52, 'Talk', '500003', '2021-09-22 00:00:00+00', '2', '13:30', '14:00', '', '1', '2021-09-21 22:25:20.90195+00', '2021-09-21 22:25:20.90195+00', 810, 840);
INSERT INTO public.employee_segment VALUES (23, 'Break', '500002', '2021-09-12 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 11:02:33.526437+00', '2021-09-18 11:02:33.526437+00', 0, 0);
INSERT INTO public.employee_segment VALUES (42, 'Meeting', '3', '2021-09-25 00:00:00+00', '2', '14:00', '16:00', '', '1', '2021-09-18 17:42:02.400255+00', '2021-09-18 17:42:02.400255+00', 840, 960);
INSERT INTO public.employee_segment VALUES (17, 'Service', '500002', '2021-09-20 00:00:00+00', '2', '08:00', '16:30', '', '1', '2021-09-17 14:24:58.720834+00', '2021-09-18 16:17:30.108841+00', 480, 990);
INSERT INTO public.employee_segment VALUES (31, 'Break', '500002', '2021-09-19 00:00:00+00', '2', '15:00', '15:15', '', '1', '2021-09-18 15:46:42.125791+00', '2021-09-18 16:17:56.086436+00', 900, 915);
INSERT INTO public.employee_segment VALUES (55, 'Service', '500003', '2021-09-23 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-21 22:32:01.112804+00', '2021-09-21 22:32:01.112804+00', 540, 780);
INSERT INTO public.employee_segment VALUES (41, 'Break', '3', '2021-09-25 00:00:00+00', '2', '13:00', '14:00', '', '1', '2021-09-18 17:41:29.565592+00', '2021-09-18 17:42:27.822551+00', 780, 840);
INSERT INTO public.employee_segment VALUES (43, 'Service', '3', '2021-09-30 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 17:42:43.675179+00', '2021-09-18 17:42:43.675179+00', 540, 780);
INSERT INTO public.employee_segment VALUES (44, 'Service', '2', '2021-09-24 00:00:00+00', '2', '09:00', '13:00', '', '1', '2021-09-18 17:43:11.181572+00', '2021-09-18 17:43:11.181572+00', 540, 780);
INSERT INTO public.employee_segment VALUES (45, 'Service', '3', '2021-09-24 00:00:00+00', '2', '09:00', '13:00', '', '1', '2021-09-18 17:43:43.537239+00', '2021-09-18 17:43:43.537239+00', 540, 780);
INSERT INTO public.employee_segment VALUES (22, 'Break', '500002', '2021-09-19 00:00:00+00', '2', '10:15', '10:30', '', '1', '2021-09-18 10:43:19.215275+00', '2021-09-18 16:18:27.257743+00', 615, 630);
INSERT INTO public.employee_segment VALUES (47, 'Break', '500002', '2021-09-22 00:00:00+00', '2', '09:00', '13:00', '', '1', '2021-09-21 22:11:42.516578+00', '2021-09-21 22:11:42.516578+00', 540, 780);
INSERT INTO public.employee_segment VALUES (56, 'Service', '500003', '2021-09-24 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-21 22:32:16.398573+00', '2021-09-21 22:32:16.398573+00', 540, 780);
INSERT INTO public.employee_segment VALUES (29, 'Service', '500002', '2021-09-19 00:00:00+00', '2', '12:30', '14:00', '', '1', '2021-09-18 15:45:48.830471+00', '2021-09-18 16:18:42.716716+00', 750, 840);
INSERT INTO public.employee_segment VALUES (57, 'Service', '500004', '2021-09-22 00:00:00+00', '2', '09:00', '12:00', '', '1', '2021-09-21 22:33:00.051488+00', '2021-09-21 22:33:00.051488+00', 540, 720);
INSERT INTO public.employee_segment VALUES (10, 'Service', '500002', '2021-09-19 00:00:00+00', '2', '08:00', '10:15', '', '1', '2021-09-16 19:42:24.505884+00', '2021-09-18 16:19:00.455095+00', 480, 615);
INSERT INTO public.employee_segment VALUES (58, 'Lunch', '500004', '2021-09-22 00:00:00+00', '2', '12:00', '13:00', '', '1', '2021-09-21 22:33:24.112493+00', '2021-09-21 22:33:24.112493+00', 720, 780);
INSERT INTO public.employee_segment VALUES (59, 'Service', '500001', '2021-09-22 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-21 22:33:38.852021+00', '2021-09-21 22:33:38.852021+00', 540, 780);
INSERT INTO public.employee_segment VALUES (13, 'Meeting', '500002', '2021-09-15 00:00:00+00', '2', '15:00', '16:00', '', '1', '2021-09-16 19:50:50.133968+00', '2021-09-18 11:03:08.093572+00', 0, 0);
INSERT INTO public.employee_segment VALUES (26, 'Service', '500002', '2021-09-19 00:00:00+00', '2', '10:30', '23:00', '', '1', '2021-09-18 15:43:03.754505+00', '2021-09-18 16:20:08.236805+00', 630, 1380);
INSERT INTO public.employee_segment VALUES (60, 'Break', '500001', '2021-09-22 00:00:00+00', '2', '13:00', '14:00', '', '1', '2021-09-21 22:34:04.036572+00', '2021-09-21 22:34:17.708628+00', 780, 840);
INSERT INTO public.employee_segment VALUES (61, 'Talk', '500001', '2021-09-22 00:00:00+00', '2', '14:00', '14:30', '', '1', '2021-09-21 22:34:49.091023+00', '2021-09-21 22:34:49.091023+00', 840, 870);
INSERT INTO public.employee_segment VALUES (33, 'Service', '2', '2021-09-21 00:00:00+00', '2', '09:00', '11:00', '', '1', '2021-09-18 17:29:13.296568+00', '2021-09-18 17:29:13.296568+00', 540, 660);
INSERT INTO public.employee_segment VALUES (32, 'Service', '500002', '2021-09-19 00:00:00+00', '2', '15:15', '16:30', '', '1', '2021-09-18 15:47:56.938796+00', '2021-09-18 16:22:36.025914+00', 915, 990);
INSERT INTO public.employee_segment VALUES (36, 'Service', '2', '2021-09-23 00:00:00+00', '2', '14:00', '15:00', '', '1', '2021-09-18 17:30:58.078994+00', '2021-09-18 17:30:58.078994+00', 840, 900);
INSERT INTO public.employee_segment VALUES (37, 'Break', '2', '2021-09-23 00:00:00+00', '2', '15:00', '16:00', '', '1', '2021-09-18 17:31:22.103964+00', '2021-09-18 17:31:43.039194+00', 900, 960);
INSERT INTO public.employee_segment VALUES (19, 'Service', '500002', '2021-09-18 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 10:37:48.380639+00', '2021-09-18 10:37:48.380639+00', 0, 0);
INSERT INTO public.employee_segment VALUES (24, 'Break', '4', '2021-09-21 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 12:22:55.198091+00', '2021-09-18 14:42:47.092279+00', 540, 780);
INSERT INTO public.employee_segment VALUES (40, 'Service', '3', '2021-09-25 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 17:41:09.165731+00', '2021-09-18 17:42:14.620272+00', 540, 780);
INSERT INTO public.employee_segment VALUES (30, 'Meeting', '500002', '2021-09-19 00:00:00+00', '2', '14:00', '15:00', '', '1', '2021-09-18 15:46:18.216259+00', '2021-09-18 16:19:27.861656+00', 840, 900);
INSERT INTO public.employee_segment VALUES (62, 'Service', '500001', '2021-09-22 00:00:00+00', '2', '14:30', '15:00', '', '1', '2021-09-21 22:35:26.778383+00', '2021-09-21 22:35:26.778383+00', 870, 900);
INSERT INTO public.employee_segment VALUES (64, 'Service', '500004', '2021-09-22 00:00:00+00', '2', '00:00', '02:00', '', '1', '2021-09-21 23:45:35.994322+00', '2021-09-21 23:45:35.994322+00', 0, 120);
INSERT INTO public.employee_segment VALUES (28, 'Break', '500002', '2021-09-19 00:00:00+00', '2', '12:00', '12:30', '', '1', '2021-09-18 15:44:33.494044+00', '2021-09-18 16:19:48.554974+00', 720, 750);
INSERT INTO public.employee_segment VALUES (12, 'Training', '500002', '2021-09-12 00:00:00+00', '2', '11:00', '12:00', '', '1', '2021-09-16 19:49:05.387777+00', '2021-09-16 19:49:05.387777+00', 0, 0);
INSERT INTO public.employee_segment VALUES (46, 'Break', '3', '2021-09-18 00:00:00+00', '2', '10:00', '11:00', '', '1', '2021-09-18 18:10:47.637233+00', '2021-09-18 18:10:47.637233+00', 600, 660);
INSERT INTO public.employee_segment VALUES (34, 'Lunch', '2', '2021-09-21 00:00:00+00', '2', '11:00', '12:00', '', '1', '2021-09-18 17:29:37.199213+00', '2021-09-18 17:29:37.199213+00', 660, 720);
INSERT INTO public.employee_segment VALUES (35, 'Meeting', '2', '2021-09-23 00:00:00+00', '2', '09:00', '13:00', '', '1', '2021-09-18 17:29:56.100483+00', '2021-09-18 17:29:56.100483+00', 540, 780);
INSERT INTO public.employee_segment VALUES (66, 'Service', '500005', '2021-09-22 00:00:00+00', '2', '00:00', '02:00', '', '1', '2021-09-22 00:43:29.21293+00', '2021-09-22 00:43:29.21293+00', 0, 120);
INSERT INTO public.employee_segment VALUES (27, 'Servcie', '500002', '2021-09-19 00:00:00+00', '2', '11:00', '12:00', '', '1', '2021-09-18 15:43:39.509128+00', '2021-09-18 16:20:30.121804+00', 660, 720);
INSERT INTO public.employee_segment VALUES (38, 'Training', '2', '2021-09-25 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 17:32:12.695347+00', '2021-09-18 17:32:12.695347+00', 540, 780);
INSERT INTO public.employee_segment VALUES (39, 'Training', '4', '2021-09-18 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 17:40:48.79521+00', '2021-09-18 17:40:48.79521+00', 540, 780);
INSERT INTO public.employee_segment VALUES (67, 'Break', '500005', '2021-09-22 00:00:00+00', '2', '02:00', '02:30', '', '1', '2021-09-22 00:44:15.212514+00', '2021-09-22 00:44:15.212514+00', 120, 150);
INSERT INTO public.employee_segment VALUES (63, 'Service', '500004', '2021-09-21 00:00:00+00', '2', '10:00', '11:30', '', '1', '2021-09-21 22:53:59.048053+00', '2021-09-22 14:37:57.772584+00', 600, 690);
INSERT INTO public.employee_segment VALUES (15, 'Service', '500002', '2021-09-17 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-17 10:47:05.622508+00', '2021-09-17 10:47:05.622508+00', 0, 0);
INSERT INTO public.employee_segment VALUES (9, 'Lunch', '500002', '2021-09-15 00:00:00+00', '1', '14:00', '15:00', '', '1', '2021-09-16 19:41:25.531567+00', '2021-09-17 10:31:59.453336+00', 0, 0);
INSERT INTO public.employee_segment VALUES (16, 'Break', '500002', '2021-09-21 00:00:00+00', '2', '09:30', '10:00', '', '1', '2021-09-17 13:34:12.359923+00', '2021-09-22 15:43:45.023745+00', 570, 600);
INSERT INTO public.employee_segment VALUES (65, 'Service', '500004', '2021-09-21 00:00:00+00', '2', '12:30', '13:00', '', '1', '2021-09-21 23:48:15.685831+00', '2021-09-22 14:38:39.2598+00', 750, 780);
INSERT INTO public.employee_segment VALUES (25, 'Service', '500002', '2021-09-22 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 12:35:43.888313+00', '2021-09-18 16:27:42.187723+00', 540, 780);
INSERT INTO public.employee_segment VALUES (18, 'Training', '500002', '2021-09-17 00:00:00+00', '2', '14:00', '15:00', '', '1', '2021-09-17 15:54:11.623952+00', '2021-09-17 15:54:30.441983+00', 0, 0);
INSERT INTO public.employee_segment VALUES (48, 'Service', '500003', '2021-09-22 00:00:00+00', '2', '09:00', '11:00', '', '1', '2021-09-21 22:22:57.895946+00', '2021-09-21 22:22:57.895946+00', 540, 660);
INSERT INTO public.employee_segment VALUES (49, 'Break', '500003', '2021-09-22 00:00:00+00', '2', '11:00', '11:15', '', '1', '2021-09-21 22:23:31.413191+00', '2021-09-21 22:23:31.413191+00', 660, 675);
INSERT INTO public.employee_segment VALUES (20, 'Servcie', '500002', '2021-09-18 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 10:40:49.114406+00', '2021-09-18 10:40:49.114406+00', 0, 0);
INSERT INTO public.employee_segment VALUES (50, 'Service', '500003', '2021-09-22 00:00:00+00', '2', '11:15', '13:00', '', '1', '2021-09-21 22:24:14.493053+00', '2021-09-21 22:24:14.493053+00', 675, 780);
INSERT INTO public.employee_segment VALUES (21, 'Service', '500002', '2021-09-18 00:00:00+00', '1', '09:00', '13:00', '', '1', '2021-09-18 10:41:22.807093+00', '2021-09-18 10:41:22.807093+00', 0, 0);
INSERT INTO public.employee_segment VALUES (69, 'Service', '500002', '2021-09-21 00:00:00+00', '2', '11:00', '11:30', '', '1', '2021-09-22 15:44:18.635825+00', '2021-09-22 15:44:32.795631+00', 660, 690);
INSERT INTO public.employee_segment VALUES (70, 'Service', '500003', '2021-09-22 00:00:00+00', '2', '20:00', '22:00', '', '1', '2021-09-22 15:46:01.958424+00', '2021-09-22 15:46:01.958424+00', 1200, 1320);
INSERT INTO public.employee_segment VALUES (71, 'Break', '500002', '2021-09-28 00:00:00+00', '2', '09:00', '10:30', '', '1', '2021-09-22 15:56:25.848688+00', '2021-09-22 15:59:07.432363+00', 540, 630);
INSERT INTO public.employee_segment VALUES (54, 'Break', '500003', '2021-09-22 00:00:00+00', '2', '16:00', '17:00', '', '1', '2021-09-21 22:26:13.350609+00', '2021-09-21 22:26:13.350609+00', 960, 1020);
INSERT INTO public.employee_segment VALUES (74, 'Service', '500003', '2021-09-22 00:00:00+00', '2', '17:00', '18:00', '', '1', '2021-09-22 18:13:34.420903+00', '2021-09-22 18:13:34.420903+00', 1020, 1080);
INSERT INTO public.employee_segment VALUES (68, 'Service', '500003', '2021-09-22 00:00:00+00', '2', '14:00', '16:00', '', '1', '2021-09-22 14:32:15.434223+00', '2021-09-22 14:32:15.434223+00', 1080, 1200);
INSERT INTO public.employee_segment VALUES (75, 'Service', '500004', '2021-09-23 00:00:00+00', '2', '19:00', '21:00', '', '1', '2021-09-22 19:59:18.569558+00', '2021-09-22 19:59:18.569558+00', 1140, 1260);
INSERT INTO public.employee_segment VALUES (76, 'Service', '500004', '2021-09-22 00:00:00+00', '2', '20:00', '22:00', '', '1', '2021-09-22 20:00:42.936286+00', '2021-09-22 20:00:42.936286+00', 1200, 1320);


--
-- TOC entry 3260 (class 0 OID 69770)
-- Dependencies: 233
-- Data for Name: forecast_master; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.forecast_master VALUES (2, '2021-09-15 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 08:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 08:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 08:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 08:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 09:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 09:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 09:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 09:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 10:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 10:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 10:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 10:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 11:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 11:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 11:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 11:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 12:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 12:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 12:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 12:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 13:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 13:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 13:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 13:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 14:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 14:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 14:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 14:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-21 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-22 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-23 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-24 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-25 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-26 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-27 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-28 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-29 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (3, '2021-09-30 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-27 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-28 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-29 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-30 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-21 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-22 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-23 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-24 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-25 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-26 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-27 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-28 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-29 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (10, '2021-09-30 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 15:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 15:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 15:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 15:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 16:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 16:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 16:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 16:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 09:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 09:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 09:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 09:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 10:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 10:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 10:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 10:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 11:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 11:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 11:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 11:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 12:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 12:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 12:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 12:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 13:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 13:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 13:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 13:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 14:00:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 14:15:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 14:30:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 14:45:00', 100, 120, 17, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 15:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 15:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 15:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 15:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 16:00:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 16:15:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 16:30:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 16:45:00', 250, 120, 43, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 17:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 17:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 17:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-21 17:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 08:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 08:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 08:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 08:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 09:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 09:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 09:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 09:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 10:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 10:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 10:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 10:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 11:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 11:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 11:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 11:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 12:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 12:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 12:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 12:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 13:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 13:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 13:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 13:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 14:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 14:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 14:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 14:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 15:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 15:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 15:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 15:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 16:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 16:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 16:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 16:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 17:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 17:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 17:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-22 17:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 08:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 08:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 08:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 08:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 09:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 09:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 09:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 09:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 10:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 10:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-01 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-02 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-03 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-04 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-05 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-06 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 10:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 10:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 11:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 11:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 11:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 11:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 12:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 12:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 12:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 12:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 13:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 13:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 13:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 13:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 14:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 14:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 14:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 14:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 15:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 15:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 15:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 15:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 16:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 16:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 16:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 16:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 17:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 17:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 17:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-23 17:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 08:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 08:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-07 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 08:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 08:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 09:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 09:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 09:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 09:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 10:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 10:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 10:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 10:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 11:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 11:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 11:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 11:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 12:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 12:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 12:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 12:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 13:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 13:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 13:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 13:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 14:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 14:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 14:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 14:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 15:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 15:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 17:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 17:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 17:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 17:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-08 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 15:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 15:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 16:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 16:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 16:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 16:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 17:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 17:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 17:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-24 17:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 08:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 08:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 08:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 08:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 09:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 09:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 09:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 09:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 10:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 10:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 17:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 17:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 17:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 17:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 17:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 17:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 17:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 17:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 10:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 11:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 11:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 11:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 11:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 12:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 12:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 12:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 12:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 13:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 13:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 13:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 13:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 14:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 14:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 14:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 14:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 15:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 15:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 15:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 15:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 16:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 16:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 16:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 16:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 09:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 09:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 09:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 09:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 10:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 10:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 10:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 10:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 11:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 11:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 11:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 11:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 12:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 12:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 12:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 12:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 13:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 13:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 13:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 13:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 14:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 14:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 14:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 14:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 15:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 15:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 15:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 15:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 16:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 16:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 16:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 16:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-09 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-10 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-11 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-12 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-13 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-14 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-15 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-16 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-17 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-18 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-30 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 10:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 10:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 11:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-19 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 11:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 11:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 11:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 12:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-20 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 12:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 12:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 12:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 13:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 13:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 13:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 13:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 14:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 14:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 14:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 14:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 15:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 15:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 08:00:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 08:15:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 08:30:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 08:45:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 15:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 15:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 16:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-25 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 16:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 16:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 16:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 17:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-26 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 17:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 17:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-25 17:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 08:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 08:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 08:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 08:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 09:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 09:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 09:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 09:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 10:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 10:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 10:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 10:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 11:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 11:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 11:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 11:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 12:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 12:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 12:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 12:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 13:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 13:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 13:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 13:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 14:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 14:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 14:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 14:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 15:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 15:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 15:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 15:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 16:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 16:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 16:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 16:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 17:00:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 17:15:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 17:30:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (9, '2021-09-26 17:45:00', 0, 120, 0, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-27 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-28 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 04:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 06:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 19:00:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-29 21:30:00', -60000, 1200, -20000, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-21 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-22 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-23 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-24 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-25 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-26 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-27 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-28 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 08:00:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 08:15:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 08:30:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-02 08:45:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-29 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 08:00:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 08:15:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 08:30:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 08:45:00', 62, 120, 10, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 09:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 09:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 09:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 09:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 10:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 10:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 10:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 10:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 11:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 11:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 11:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 11:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 12:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 12:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 12:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 12:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 13:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 13:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 13:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 13:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 14:00:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 14:15:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 14:30:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 14:45:00', 218, 120, 33, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 15:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 15:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 15:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 15:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 16:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 16:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 16:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-03 16:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (1, '2021-09-30 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-21 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-22 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-27 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-28 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-29 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-23 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-30 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-21 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 09:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 09:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 09:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 09:45:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 10:00:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 10:15:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-10-01 10:30:00', 93, 120, 14, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-22 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (30, '2021-09-23 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-21 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-22 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-23 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-24 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (2, '2021-09-24 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 16:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 16:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 17:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 17:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 17:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-25 17:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 08:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 08:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 08:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 08:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 09:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 09:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 09:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 09:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 10:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 10:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 10:30:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 10:45:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 11:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 11:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 11:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 11:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 12:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 12:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 12:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 12:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 13:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 13:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 13:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 13:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 14:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 14:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 14:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 14:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 15:00:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 15:15:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 15:30:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 15:45:00', 175, 120, 27, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 16:00:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 16:15:00', 75, 120, 12, 0);
INSERT INTO public.forecast_master VALUES (70, '2021-09-26 16:30:00', 75, 120, 12, 0);


--
-- TOC entry 3238 (class 0 OID 69291)
-- Dependencies: 211
-- Data for Name: holiday; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.holiday VALUES (4, '2021-09-19 00:00:00+00', 'Thursday', 'Eid', '3', '1', '2021-09-18 11:31:22.65896+00', '2021-09-18 13:47:46.340189+00');
INSERT INTO public.holiday VALUES (2, '2021-09-18 00:00:00+00', 'Wednesday', 'Columbus Day', '1', '1', '2021-09-18 11:29:58.716442+00', '2021-09-18 18:36:37.044452+00');
INSERT INTO public.holiday VALUES (3, '2021-09-08 00:00:00+00', 'Wednesday', 'Thanks giving', '1', '1', '2021-09-18 11:31:10.011406+00', '2021-09-18 19:12:39.311417+00');
INSERT INTO public.holiday VALUES (5, '2021-09-30 00:00:00+00', 'Thursday', 'National Day', '3', '1', '2021-09-18 13:13:39.076957+00', '2021-09-18 19:32:18.689658+00');


--
-- TOC entry 3240 (class 0 OID 69405)
-- Dependencies: 213
-- Data for Name: holidayFairness; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."holidayFairness" VALUES (1, 0, 0, '1', '1', '1', '1', '2021-09-18 09:18:07.513716+00', '2021-09-18 09:18:07.513716+00');
INSERT INTO public."holidayFairness" VALUES (2, 53, 1, '1', '1', '1', '1', '2021-09-18 09:49:01.938606+00', '2021-09-18 09:49:01.938606+00');
INSERT INTO public."holidayFairness" VALUES (5, 63, 4, NULL, NULL, NULL, NULL, '2021-09-20 18:24:36.451762+00', '2021-09-20 18:24:36.451762+00');
INSERT INTO public."holidayFairness" VALUES (7, 61, 2, '3', '1', '1', NULL, '2021-09-20 21:03:01.02495+00', '2021-09-20 21:03:01.02495+00');
INSERT INTO public."holidayFairness" VALUES (8, 61, 4, NULL, '2', NULL, NULL, '2021-09-20 21:03:01.02495+00', '2021-09-20 21:03:01.02495+00');


--
-- TOC entry 3232 (class 0 OID 69148)
-- Dependencies: 205
-- Data for Name: managementunit; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.managementunit VALUES (56, 'Dallas MU', 'Monday', '(UTC-6:00) US & Canada', '[{"day":"Monday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-18 18:18:15.172652+00', '2021-09-18 18:18:15.172652+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.managementunit VALUES (57, 'Sales MU', 'Tuesday', '(UTC+3:00) Istanbul', '[{"day":"Monday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-18 18:20:07.131153+00', '2021-09-18 18:20:07.131153+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.managementunit VALUES (58, 'Care MU', 'Wednesday', '(UTC+5:00) Islamabad,Karachi', '[{"day":"Monday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-18 18:20:26.689979+00', '2021-09-18 18:20:26.689979+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.managementunit VALUES (59, 'Retention MU', 'Thursday', '(UTC-6:00) US & Canada', '[{"day":"Monday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-18 18:20:44.084075+00', '2021-09-18 18:20:44.084075+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.managementunit VALUES (64, 'WDC', 'Tuesday', '(UTC+5:00) Islamabad,Karachi', '[{"day":"Monday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-20 20:53:30.608827+00', '2021-09-20 20:53:30.608827+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.managementunit VALUES (63, 'NYC WFM', 'Monday', '(UTC+5:00) Islamabad,Karachi', '[{"day":"Monday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-20 18:24:36.451762+00', '2021-09-20 18:24:36.451762+00', '23:00', '12:00', true, true, true, true, 2, '1', true, true, 'B', 1, 1, 1, 1, '1', '1', '', 4, '2020-12-01 00:00:00+00', 1, '2020-12-31 00:00:00+00', '', 1, 1, '12:00', '12:00', '10:59', '23:59', 1, 1, '12:00', 1, '', '', '', '', true, true, 1, '2020-12-08 00:00:00+00', '2020-12-09 00:00:00+00', true, true, 'B', 1, 1, '2', '1', '2', '2', '2', '2', '3', '3', '2', '2', '2', NULL, NULL, NULL, NULL, '2', '2', 'B');
INSERT INTO public.managementunit VALUES (61, 'Texas WFG', 'Monday', '(UTC+5:00) Islamabad,Karachi', '[{"day":"Monday","status":"Close","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"21:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-19 19:22:15.660884+00', '2021-09-20 18:25:11.523867+00', '23:00', '13:00', true, true, true, true, 2, '1', true, true, 'A', 1, 1, 1, 1, '1', '10', '', 1, '2021-09-08 00:00:00+00', 1, '2021-01-01 00:00:00+00', '', 0, 0, '23:59', '23:59', '23:59', '23:59', 6, 9, '16:00', 1, '', '', '', '', true, true, 1, '2020-12-07 00:00:00+00', '2021-01-04 00:00:00+00', true, true, 'Work-A', 0, 0, '2', '1', '2', '2', '2', '2', '2', '2', '2', '1', '1', NULL, NULL, NULL, NULL, '1', '2', '1');
INSERT INTO public.managementunit VALUES (65, 'Nevada WFM', 'Monday', '(UTC-6:00) US & Canada', '[{"day":"Monday","status":"Close","from":"08:00","to":"20:00","tableData":{"id":0}},{"day":"Tuesday","status":"Open","from":"08:00","to":"21:00","tableData":{"id":1}},{"day":"Wednesday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":2}},{"day":"Thursday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":3}},{"day":"Friday","status":"Open","from":"08:00","to":"20:00","tableData":{"id":4}},{"day":"Saturday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":5}},{"day":"Sunday","status":"Close","from":"12:00","to":"23:59","tableData":{"id":6}}]', '2021-09-21 10:35:37.962124+00', '2021-09-21 10:35:37.962124+00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- TOC entry 3251 (class 0 OID 69695)
-- Dependencies: 224
-- Data for Name: seg_ams_state; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.seg_ams_state VALUES (-1, 'Unknown');
INSERT INTO public.seg_ams_state VALUES (0, 'Service');
INSERT INTO public.seg_ams_state VALUES (1, 'Break');
INSERT INTO public.seg_ams_state VALUES (2, 'Service');
INSERT INTO public.seg_ams_state VALUES (3, 'Service');
INSERT INTO public.seg_ams_state VALUES (4, 'Service');
INSERT INTO public.seg_ams_state VALUES (5, 'Service');
INSERT INTO public.seg_ams_state VALUES (6, 'Service');
INSERT INTO public.seg_ams_state VALUES (7, 'Service');
INSERT INTO public.seg_ams_state VALUES (8, 'Logout');


--
-- TOC entry 3234 (class 0 OID 69163)
-- Dependencies: 207
-- Data for Name: segment; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.segment VALUES (3, 'Break', 0, 'Break', '#79b051', '#000000', '', '2021-09-15 08:34:10.048172+00', '2021-09-21 21:30:46.450008+00');
INSERT INTO public.segment VALUES (1, 'Service', 0, 'Service', '#31a0f3', '#060606', '1', '2021-09-14 12:44:44.062218+00', '2021-09-21 21:31:07.79066+00');
INSERT INTO public.segment VALUES (4, 'Meeting', 0, 'Meet', '#e3d556', '#060606', '', '2021-09-15 08:34:27.016566+00', '2021-09-15 08:34:27.016566+00');
INSERT INTO public.segment VALUES (5, 'Training', 0, 'Project', '#f59f4e', '#060606', '', '2021-09-15 08:34:39.220107+00', '2021-09-15 08:34:39.220107+00');
INSERT INTO public.segment VALUES (6, 'Lunch', 1, 'Lunch', '#f86835', '#060606', '1', '2021-09-18 15:36:24.402952+00', '2021-09-19 12:06:41.453638+00');
INSERT INTO public.segment VALUES (9, 'Talk', 1, 'Online', '#a77575', '#000', '', '2021-09-19 17:20:46.916864+00', '2021-09-19 17:26:00.728299+00');


--
-- TOC entry 3259 (class 0 OID 69750)
-- Dependencies: 232
-- Data for Name: shrinkage; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.shrinkage VALUES (1, '2021-09-10 20:14:14.893+00', '2021-09-15 20:14:14.893+00', 1, 0, 0, 1, 0, 0, '2021-09-21 20:13:36.748604+00', '2021-09-21 20:13:36.748604+00');
INSERT INTO public.shrinkage VALUES (2, '2021-09-16 20:14:14.893+00', '2021-09-20 20:14:14.893+00', 0, 0, 2, 0, 0, 0, '2021-09-21 20:13:57.638001+00', '2021-09-21 20:13:57.638001+00');
INSERT INTO public.shrinkage VALUES (3, '2021-09-21 20:14:14.893+00', '2021-09-21 20:14:14.893+00', 0, 0, 0, 1, 0, 0, '2021-09-21 20:14:13.956782+00', '2021-09-21 20:14:13.956782+00');


--
-- TOC entry 3244 (class 0 OID 69643)
-- Dependencies: 217
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.skill VALUES (21, '40', '40', 'ucd-mia', 80, 20, 0, false, '2021-09-21 23:41:58.85459+00', '2021-09-21 23:41:58.85459+00');
INSERT INTO public.skill VALUES (22, '30', '30', 'ucd-mia', 80, 20, 0, false, '2021-09-21 23:41:58.856264+00', '2021-09-21 23:41:58.856264+00');
INSERT INTO public.skill VALUES (23, 'AG_20', '10_clone_58513', '', 0, 0, 0, false, '2021-09-21 23:41:58.856676+00', '2021-09-21 23:41:58.856676+00');
INSERT INTO public.skill VALUES (24, 'AG_20', '20', 'ucd-mia', 80, 20, 0, false, '2021-09-21 23:41:58.855818+00', '2021-09-21 23:41:58.855818+00');
INSERT INTO public.skill VALUES (25, 'AG_30', '10_clone_3949', '', 0, 0, 0, false, '2021-09-21 23:41:58.860608+00', '2021-09-21 23:41:58.860608+00');
INSERT INTO public.skill VALUES (26, 'Ag 70', '70', 'ucd-mia', 80, 20, 0, true, '2021-09-21 23:41:58.863631+00', '2021-09-22 21:52:23.007318+00');
INSERT INTO public.skill VALUES (17, 'Retention', '2', 'ucd-mia', 80, 20, 0, true, '2021-09-21 21:49:16.104959+00', '2021-10-08 13:21:38.181852+00');
INSERT INTO public.skill VALUES (18, 'Complaints', '3', 'ucd-mia', 80, 20, 0, true, '2021-09-21 21:49:16.104969+00', '2021-10-08 13:21:38.181852+00');
INSERT INTO public.skill VALUES (19, 'Sales', '1', 'ucd-mia', 80, 20, 0, true, '2021-09-21 21:49:16.33711+00', '2021-10-08 13:21:49.918528+00');
INSERT INTO public.skill VALUES (20, 'AG_10', '10', '', 0, 0, 0, true, '2021-09-21 23:41:58.849457+00', '2021-10-08 13:21:49.918528+00');


--
-- TOC entry 3257 (class 0 OID 69737)
-- Dependencies: 230
-- Data for Name: specialEvent; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."specialEvent" VALUES (1, 'Power outage', 0, 1, 1, '2021-09-21 20:10:39.551733+00', '2021-09-21 20:10:39.551733+00');
INSERT INTO public."specialEvent" VALUES (2, 'Fire alarm', 1, 1, 1, '2021-09-21 20:23:43.655247+00', '2021-09-21 20:23:43.655247+00');


--
-- TOC entry 3248 (class 0 OID 69674)
-- Dependencies: 221
-- Data for Name: team; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.team VALUES (4, 'Operations Team', '2021-09-21 19:58:37.108056+00', '2021-09-21 19:58:37.108056+00');
INSERT INTO public.team VALUES (5, 'Sales Team', '2021-09-21 19:58:49.454787+00', '2021-09-21 19:58:49.454787+00');
INSERT INTO public.team VALUES (6, 'Marketing Team', '2021-09-21 19:59:11.130663+00', '2021-09-21 19:59:11.130663+00');
INSERT INTO public.team VALUES (7, 'Telephone Operators Team', '2021-09-21 20:00:49.574389+00', '2021-09-21 20:00:49.574389+00');
INSERT INTO public.team VALUES (8, 'Quality Assurance Team', '2021-09-21 20:04:08.740968+00', '2021-09-21 20:04:08.740968+00');
INSERT INTO public.team VALUES (9, 'IT Team', '2021-09-21 20:04:58.744632+00', '2021-09-21 20:04:58.744632+00');


--
-- TOC entry 3255 (class 0 OID 69721)
-- Dependencies: 228
-- Data for Name: workShift; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."workShift" VALUES (1, 'All Day Shift', true, '1', 40, 0, 5, 0, '09:00', 8, 5, 40, 0, true, 0, '1', '2021-09-21 20:08:02.418922+00', '2021-10-08 13:19:08.985911+00', '');
INSERT INTO public."workShift" VALUES (2, 'Morning Shift', true, '1', 40, 0, 5, 0, '09:00', 8, 5, 40, 0, true, 0, '1', '2021-09-21 20:08:16.250166+00', '2021-10-08 13:19:18.458073+00', '');
INSERT INTO public."workShift" VALUES (3, 'Evening Shift', true, '1', 40, 0, 5, 0, '06:00', 8, 5, 40, 0, true, 0, '1', '2021-09-21 20:09:34.210314+00', '2021-10-08 13:19:25.895106+00', '');


--
-- TOC entry 3264 (class 0 OID 69807)
-- Dependencies: 237
-- Data for Name: work_activities; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3270 (class 0 OID 85463)
-- Dependencies: 243
-- Data for Name: work_activity; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.work_activity VALUES (1, 'wa1', '1', '21:36', '21:37', '21:39', 1, '21:40', '#417505', '2021-10-08 16:35:33.442688+00', '2021-10-08 16:49:33.66394+00');
INSERT INTO public.work_activity VALUES (2, 'Lunch Break', '2', '12:51', '12:54', '23:53', 10, '23:52', '#f5a623', '2021-10-08 16:49:58.212876+00', '2021-10-08 16:50:08.637208+00');


--
-- TOC entry 3253 (class 0 OID 69700)
-- Dependencies: 226
-- Data for Name: work_condition; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.work_condition VALUES (1, 'Morning Break', true, '2021-09-21 20:07:07.868827+00', '2021-10-08 13:20:18.331167+00', 8, '09:00', '');
INSERT INTO public.work_condition VALUES (2, 'Lunch', true, '2021-09-21 20:07:23.822687+00', '2021-10-08 13:20:34.947705+00', 8, '09:00', '');


--
-- TOC entry 3266 (class 0 OID 69820)
-- Dependencies: 239
-- Data for Name: work_condition_activities; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3262 (class 0 OID 69791)
-- Dependencies: 235
-- Data for Name: work_shift_condition; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.work_shift_condition VALUES (5, 2, 1, '2021-10-08 13:20:18.336396+00', '2021-10-08 13:20:18.336396+00');
INSERT INTO public.work_shift_condition VALUES (6, 2, 2, '2021-10-08 13:20:34.952456+00', '2021-10-08 13:20:34.952456+00');


--
-- TOC entry 3297 (class 0 OID 0)
-- Dependencies: 218
-- Name: agentSkill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."agentSkill_id_seq"', 427, true);


--
-- TOC entry 3298 (class 0 OID 0)
-- Dependencies: 222
-- Name: agentTeam_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."agentTeam_id_seq"', 6, true);


--
-- TOC entry 3299 (class 0 OID 0)
-- Dependencies: 240
-- Name: agent_adherence_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.agent_adherence_history_id_seq', 35, true);


--
-- TOC entry 3300 (class 0 OID 0)
-- Dependencies: 202
-- Name: agent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.agent_id_seq', 142, true);


--
-- TOC entry 3301 (class 0 OID 0)
-- Dependencies: 208
-- Name: dashboard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.dashboard_id_seq', 1, true);


--
-- TOC entry 3302 (class 0 OID 0)
-- Dependencies: 214
-- Name: employee_segment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employee_segment_id_seq', 76, true);


--
-- TOC entry 3303 (class 0 OID 0)
-- Dependencies: 212
-- Name: holidayFairness_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."holidayFairness_id_seq"', 8, true);


--
-- TOC entry 3304 (class 0 OID 0)
-- Dependencies: 210
-- Name: holiday_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.holiday_id_seq', 9, true);


--
-- TOC entry 3305 (class 0 OID 0)
-- Dependencies: 204
-- Name: managementunit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.managementunit_id_seq', 65, true);


--
-- TOC entry 3306 (class 0 OID 0)
-- Dependencies: 206
-- Name: segment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.segment_id_seq', 12, true);


--
-- TOC entry 3307 (class 0 OID 0)
-- Dependencies: 231
-- Name: shrinkage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.shrinkage_id_seq', 3, true);


--
-- TOC entry 3308 (class 0 OID 0)
-- Dependencies: 216
-- Name: skill_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.skill_id_seq', 26, true);


--
-- TOC entry 3309 (class 0 OID 0)
-- Dependencies: 229
-- Name: specialEvent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."specialEvent_id_seq"', 2, true);


--
-- TOC entry 3310 (class 0 OID 0)
-- Dependencies: 220
-- Name: team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.team_id_seq', 9, true);


--
-- TOC entry 3311 (class 0 OID 0)
-- Dependencies: 227
-- Name: workShift_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."workShift_id_seq"', 4, true);


--
-- TOC entry 3312 (class 0 OID 0)
-- Dependencies: 236
-- Name: work_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.work_activities_id_seq', 1, false);


--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 242
-- Name: work_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.work_activity_id_seq', 2, true);


--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 238
-- Name: work_condition_activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.work_condition_activities_id_seq', 1, false);


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 225
-- Name: work_condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.work_condition_id_seq', 2, true);


--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 234
-- Name: work_shift_condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.work_shift_condition_id_seq', 6, true);


--
-- TOC entry 3084 (class 2606 OID 69711)
-- Name: work_condition PK_02115dc547aac26748c87b11838; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_condition
    ADD CONSTRAINT "PK_02115dc547aac26748c87b11838" PRIMARY KEY (id);


--
-- TOC entry 3062 (class 2606 OID 69145)
-- Name: agent PK_1000e989398c5d4ed585cf9a46f; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.agent
    ADD CONSTRAINT "PK_1000e989398c5d4ed585cf9a46f" PRIMARY KEY (id);


--
-- TOC entry 3068 (class 2606 OID 69199)
-- Name: dashboard PK_233ed28fa3a1f9fbe743f571f75; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dashboard
    ADD CONSTRAINT "PK_233ed28fa3a1f9fbe743f571f75" PRIMARY KEY (id);


--
-- TOC entry 3072 (class 2606 OID 69412)
-- Name: holidayFairness PK_369b5423582f3384e8b908a613e; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."holidayFairness"
    ADD CONSTRAINT "PK_369b5423582f3384e8b908a613e" PRIMARY KEY (id);


--
-- TOC entry 3096 (class 2606 OID 69817)
-- Name: work_activities PK_3ddf23c45d815059a11935ef91d; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_activities
    ADD CONSTRAINT "PK_3ddf23c45d815059a11935ef91d" PRIMARY KEY (id);


--
-- TOC entry 3070 (class 2606 OID 69298)
-- Name: holiday PK_3e7492c25f80418a7aad0aec053; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.holiday
    ADD CONSTRAINT "PK_3e7492c25f80418a7aad0aec053" PRIMARY KEY (id);


--
-- TOC entry 3086 (class 2606 OID 69734)
-- Name: workShift PK_49e8370adce15a8103f2c46f902; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."workShift"
    ADD CONSTRAINT "PK_49e8370adce15a8103f2c46f902" PRIMARY KEY (id);


--
-- TOC entry 3088 (class 2606 OID 69747)
-- Name: specialEvent PK_4e5f7d9a91b4f9ae923d245f96c; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."specialEvent"
    ADD CONSTRAINT "PK_4e5f7d9a91b4f9ae923d245f96c" PRIMARY KEY (id);


--
-- TOC entry 3082 (class 2606 OID 69694)
-- Name: agentTeam PK_54c6c77b8325cdf4070a2ed2d37; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."agentTeam"
    ADD CONSTRAINT "PK_54c6c77b8325cdf4070a2ed2d37" PRIMARY KEY (id);


--
-- TOC entry 3064 (class 2606 OID 69158)
-- Name: managementunit PK_7372069de11d1399c5a3ecd154e; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.managementunit
    ADD CONSTRAINT "PK_7372069de11d1399c5a3ecd154e" PRIMARY KEY (id);


--
-- TOC entry 3076 (class 2606 OID 69657)
-- Name: skill PK_a0d33334424e64fb78dc3ce7196; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT "PK_a0d33334424e64fb78dc3ce7196" PRIMARY KEY (id);


--
-- TOC entry 3078 (class 2606 OID 69671)
-- Name: agentSkill PK_a12089c0270185d983b408615ff; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."agentSkill"
    ADD CONSTRAINT "PK_a12089c0270185d983b408615ff" PRIMARY KEY (id);


--
-- TOC entry 3100 (class 2606 OID 69840)
-- Name: agent_adherence_history PK_agadh; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.agent_adherence_history
    ADD CONSTRAINT "PK_agadh" PRIMARY KEY (id);


--
-- TOC entry 3102 (class 2606 OID 85473)
-- Name: work_activity PK_d019c93ed3493664fd1ffe8dc79; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_activity
    ADD CONSTRAINT "PK_d019c93ed3493664fd1ffe8dc79" PRIMARY KEY (id);


--
-- TOC entry 3066 (class 2606 OID 69174)
-- Name: segment PK_d648ac58d8e0532689dfb8ad7ef; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.segment
    ADD CONSTRAINT "PK_d648ac58d8e0532689dfb8ad7ef" PRIMARY KEY (id);


--
-- TOC entry 3094 (class 2606 OID 69798)
-- Name: work_shift_condition PK_e3f268111d13d2ab911139c620f; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_shift_condition
    ADD CONSTRAINT "PK_e3f268111d13d2ab911139c620f" PRIMARY KEY (id);


--
-- TOC entry 3074 (class 2606 OID 69584)
-- Name: employee_segment PK_e8a1a16b3cf66ed282f1b1fea27; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee_segment
    ADD CONSTRAINT "PK_e8a1a16b3cf66ed282f1b1fea27" PRIMARY KEY (id);


--
-- TOC entry 3098 (class 2606 OID 69827)
-- Name: work_condition_activities PK_ede3fb443e69979c0c33353fbd6; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.work_condition_activities
    ADD CONSTRAINT "PK_ede3fb443e69979c0c33353fbd6" PRIMARY KEY (id);


--
-- TOC entry 3090 (class 2606 OID 69757)
-- Name: shrinkage PK_ee9f5daa5a505b0e9181f686891; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shrinkage
    ADD CONSTRAINT "PK_ee9f5daa5a505b0e9181f686891" PRIMARY KEY (id);


--
-- TOC entry 3080 (class 2606 OID 69684)
-- Name: team PK_f57d8293406df4af348402e4b74; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.team
    ADD CONSTRAINT "PK_f57d8293406df4af348402e4b74" PRIMARY KEY (id);


--
-- TOC entry 3092 (class 2606 OID 69774)
-- Name: forecast_master forecast_master_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forecast_master
    ADD CONSTRAINT forecast_master_pkey PRIMARY KEY (service_queue, datetime);


-- Completed on 2021-10-14 17:04:53

--
-- PostgreSQL database dump complete
--

